.class public Lcom/baidu/mobstat/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/baidu/mobstat/al;


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const-string v0, "http://openrcv.baidu.com/1010/bplus.gif"

    :goto_0
    sput-object v0, Lcom/baidu/mobstat/al;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "https://openrcv.baidu.com/1010/bplus.gif"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/al;->c:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/al;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/baidu/mobstat/al;->b:Lcom/baidu/mobstat/al;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/baidu/mobstat/al;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/al;->b:Lcom/baidu/mobstat/al;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/baidu/mobstat/al;

    invoke-direct {v0}, Lcom/baidu/mobstat/al;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/al;->b:Lcom/baidu/mobstat/al;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/al;->b:Lcom/baidu/mobstat/al;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 193
    .line 194
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 198
    :goto_0
    invoke-static {p1, p2}, Lcom/baidu/mobstat/co;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 201
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 202
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 203
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 204
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v3, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 209
    :try_start_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 210
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 213
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 214
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 215
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 216
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 218
    if-eqz v0, :cond_1

    .line 219
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 224
    :goto_1
    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 227
    if-eqz v0, :cond_2

    .line 228
    invoke-static {}, Lcom/baidu/mobstat/cm;->a()[B

    move-result-object v0

    .line 230
    const/4 v4, 0x0

    invoke-static {}, Lcom/baidu/mobstat/cq;->a()[B

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/baidu/mobstat/cx;->a(Z[B[B)[B

    move-result-object v4

    .line 232
    array-length v5, v4

    int-to-long v6, v5

    const/4 v5, 0x4

    invoke-static {v6, v7, v5}, Lcom/baidu/mobstat/al;->a(JI)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 233
    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 235
    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_7

    .line 238
    const-string v5, "utf-8"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/baidu/mobstat/cm;->a([B[B[B)[B

    move-result-object v0

    .line 239
    array-length v4, v0

    int-to-long v4, v4

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/baidu/mobstat/al;->a(JI)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 244
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 246
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 247
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 249
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 250
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; len: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bd;->c(Ljava/lang/String;)V

    .line 254
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_3

    .line 255
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 277
    const-string v0, ""

    :goto_3
    return-object v0

    .line 221
    :cond_1
    const/4 v4, 0x2

    :try_start_2
    new-array v4, v4, [B

    fill-array-data v4, :array_8

    invoke-virtual {v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 274
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 241
    :cond_2
    :try_start_3
    const-string v0, "utf-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    .line 257
    :cond_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 261
    if-nez v2, :cond_4

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 274
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 265
    :cond_4
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_0

    .line 212
    nop

    :array_0
    .array-data 1
        0x48t
        0x4dt
        0x30t
        0x31t
    .end array-data

    .line 213
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 214
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x3t
        -0xet
    .end array-data

    .line 215
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 216
    :array_4
    .array-data 1
        0x0t
        0x2t
    .end array-data

    .line 219
    nop

    :array_5
    .array-data 1
        0x0t
        0x1t
    .end array-data

    .line 224
    nop

    :array_6
    .array-data 1
        0x48t
        0x4dt
        0x30t
        0x31t
    .end array-data

    .line 235
    :array_7
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 221
    :array_8
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-static {}, Lcom/baidu/mobstat/co;->a()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 95
    new-instance v2, Ljava/io/File;

    const-string v3, "backups/system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_0

    array-length v0, v3

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/an;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/an;-><init>(Lcom/baidu/mobstat/al;)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_1
    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_3

    .line 118
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 128
    const-string v6, "__send_log_data_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backups/system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {v5}, Lcom/baidu/mobstat/co;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-direct {p0, p1, v6}, Lcom/baidu/mobstat/al;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 137
    invoke-static {v5}, Lcom/baidu/mobstat/co;->c(Ljava/lang/String;)Z

    move v0, v1

    goto :goto_3

    .line 140
    :cond_4
    invoke-direct {p0, v6, v5}, Lcom/baidu/mobstat/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x5

    if-lt v0, v5, :cond_2

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/al;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/al;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/al;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/al;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backups/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__send_log_data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v1, 0x0

    .line 161
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    invoke-static {v0}, Lcom/baidu/mobstat/v;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 167
    invoke-static {v1}, Lcom/baidu/mobstat/v;->b(Lorg/json/JSONObject;)V

    .line 168
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/baidu/mobstat/co;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(JI)[B
    .locals 6

    .prologue
    .line 281
    new-array v1, p2, [B

    .line 283
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 284
    sub-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 285
    const/16 v2, 0x8

    shr-long/2addr p0, v2

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-object v1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    :try_start_0
    sget-object v1, Lcom/baidu/mobstat/al;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2}, Lcom/baidu/mobstat/al;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 59
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/al;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/am;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/mobstat/am;-><init>(Lcom/baidu/mobstat/al;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
