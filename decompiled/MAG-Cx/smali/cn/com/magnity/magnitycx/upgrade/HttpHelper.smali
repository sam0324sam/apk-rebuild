.class public Lcn/com/magnity/magnitycx/upgrade/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# static fields
.field public static volatile isCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetRemoteVersionInfo(Ljava/lang/String;II)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "connTimeout"    # I
    .param p2, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 24
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 26
    .local v3, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v3, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 27
    invoke-virtual {v3, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 28
    const-string v10, "GET"

    invoke-virtual {v3, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 29
    const-string v10, "Accept-Language"

    const-string v11, "zh-CN"

    invoke-virtual {v3, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v10, "Charset"

    const-string v11, "UTF-8"

    invoke-virtual {v3, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v10, "Connextion"

    const-string v11, "Keep-Alive"

    invoke-virtual {v3, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 35
    .local v2, "code":I
    const/16 v10, 0x12e

    if-ne v2, v10, :cond_0

    .line 36
    new-instance v9, Ljava/net/URL;

    .end local v9    # "url":Ljava/net/URL;
    const-string v10, "Location"

    invoke-virtual {v3, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v9    # "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 38
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v3, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 39
    invoke-virtual {v3, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 40
    const-string v10, "GET"

    invoke-virtual {v3, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 41
    const-string v10, "Accept-Language"

    const-string v11, "zh-CN"

    invoke-virtual {v3, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v10, "Charset"

    const-string v11, "UTF-8"

    invoke-virtual {v3, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v10, "Connextion"

    const-string v11, "Keep-Alive"

    invoke-virtual {v3, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 47
    :cond_0
    const/16 v10, 0xc8

    if-ne v2, v10, :cond_8

    .line 48
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 49
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v10, ""

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 51
    .local v8, "stringBuffer":Ljava/lang/StringBuffer;
    const-string v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "newLine":Ljava/lang/String;
    const-string v6, ""

    .line 53
    .local v6, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "newLine":Ljava/lang/String;
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v10

    move-object v0, v1

    .line 68
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "code":I
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_1

    .line 69
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 71
    :cond_1
    if-eqz v5, :cond_2

    .line 72
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 76
    :cond_2
    :goto_2
    throw v10

    .line 56
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "code":I
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "newLine":Ljava/lang/String;
    .restart local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 59
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 60
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 61
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 68
    if-eqz v1, :cond_5

    .line 69
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 71
    :cond_5
    if-eqz v5, :cond_6

    .line 72
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_3
    move-object v0, v1

    .line 64
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "newLine":Ljava/lang/String;
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_7
    :goto_4
    return-object v10

    .line 74
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "newLine":Ljava/lang/String;
    .restart local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    .line 75
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "Fail to get remote info because of io error."

    invoke-static {v11}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_3

    .line 63
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "newLine":Ljava/lang/String;
    .end local v8    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_8
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get error respond("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 64
    const-string v10, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    if-eqz v0, :cond_9

    .line 69
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 71
    :cond_9
    if-eqz v5, :cond_7

    .line 72
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 74
    :catch_1
    move-exception v4

    .line 75
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "Fail to get remote info because of io error."

    invoke-static {v11}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_4

    .line 74
    .end local v2    # "code":I
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "url":Ljava/net/URL;
    :catch_2
    move-exception v4

    .line 75
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "Fail to get remote info because of io error."

    invoke-static {v11}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_2

    .line 67
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    goto :goto_1
.end method

.method public static getRemoteApk(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)Ljava/io/File;
    .locals 20
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "connTimeout"    # I
    .param p3, "readTimeout"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v10, 0x0

    .line 85
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 86
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 89
    .local v12, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 91
    .local v7, "conn":Ljava/net/HttpURLConnection;
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 92
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 93
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    const-string v17, "Accept-Language"

    const-string v18, "zh-CN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v17, "Charset"

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v17, "Connextion"

    const-string v18, "Keep-Alive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 100
    .local v6, "code":I
    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v6, v0, :cond_0

    .line 101
    new-instance v16, Ljava/net/URL;

    .end local v16    # "url":Ljava/net/URL;
    const-string v17, "Location"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v16    # "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 103
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 104
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 105
    const-string v17, "Accept-Encoding"

    const-string v18, "identity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 107
    const-string v17, "Accept-Language"

    const-string v18, "zh-CN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v17, "Charset"

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v17, "Connextion"

    const-string v18, "Keep-Alive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 113
    :cond_0
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v6, v0, :cond_b

    .line 114
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    .line 115
    .local v14, "size":I
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 118
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v9, Ljava/io/File;

    sget-object v17, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->otherDir:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MAG-Cx."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 121
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 123
    :cond_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 125
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 126
    .local v15, "total":I
    const/16 v17, 0x400

    :try_start_2
    move/from16 v0, v17

    new-array v5, v0, [B

    .line 127
    .local v5, "buf":[B
    :goto_0
    sget-boolean v17, Lcn/com/magnity/magnitycx/upgrade/HttpHelper;->isCancelled:Z

    if-nez v17, :cond_5

    invoke-virtual {v4, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    .local v13, "len":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_5

    .line 128
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v5, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 129
    add-int/2addr v15, v13

    .line 130
    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v15, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    .end local v5    # "buf":[B
    .end local v13    # "len":I
    :catchall_0
    move-exception v17

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 143
    .end local v6    # "code":I
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "size":I
    .end local v15    # "total":I
    .end local v16    # "url":Ljava/net/URL;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v10, :cond_2

    .line 144
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 146
    :cond_2
    if-eqz v3, :cond_3

    .line 147
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 149
    :cond_3
    if-eqz v12, :cond_4

    .line 150
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 154
    :cond_4
    :goto_2
    throw v17

    .line 133
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "buf":[B
    .restart local v6    # "code":I
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "size":I
    .restart local v15    # "total":I
    .restart local v16    # "url":Ljava/net/URL;
    :cond_5
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 134
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 135
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    if-ne v15, v14, :cond_a

    .line 143
    .end local v9    # "file":Ljava/io/File;
    :goto_3
    if-eqz v11, :cond_6

    .line 144
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 146
    :cond_6
    if-eqz v4, :cond_7

    .line 147
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 149
    :cond_7
    if-eqz v12, :cond_8

    .line 150
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_8
    :goto_4
    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v10, v11

    .line 139
    .end local v5    # "buf":[B
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "size":I
    .end local v15    # "total":I
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :cond_9
    :goto_5
    return-object v9

    .line 136
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "buf":[B
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "size":I
    .restart local v15    # "total":I
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    .line 152
    .end local v9    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 153
    .local v8, "ex":Ljava/io/IOException;
    const-string v17, "Fail to get remote file because of io error."

    invoke-static/range {v17 .. v17}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_4

    .line 138
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "buf":[B
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "size":I
    .end local v15    # "total":I
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :cond_b
    :try_start_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Get error respond("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 139
    const/4 v9, 0x0

    .line 143
    if-eqz v10, :cond_c

    .line 144
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 146
    :cond_c
    if-eqz v3, :cond_d

    .line 147
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 149
    :cond_d
    if-eqz v12, :cond_9

    .line 150
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 152
    :catch_1
    move-exception v8

    .line 153
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v17, "Fail to get remote file because of io error."

    invoke-static/range {v17 .. v17}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_5

    .line 152
    .end local v6    # "code":I
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    .line 153
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v18, "Fail to get remote file because of io error."

    invoke-static/range {v18 .. v18}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_2

    .line 142
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    goto :goto_1

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "code":I
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v14    # "size":I
    .restart local v16    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v17

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method
