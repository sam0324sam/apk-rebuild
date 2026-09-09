.class Lcom/baidu/mobstat/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/bt;


# instance fields
.field private b:Z

.field private c:I

.field private d:I

.field private e:Lcom/baidu/mobstat/SendStrategyEnum;

.field private f:Ljava/util/Timer;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/mobstat/bt;

    invoke-direct {v0}, Lcom/baidu/mobstat/bt;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/bt;->a:Lcom/baidu/mobstat/bt;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/baidu/mobstat/bt;->b:Z

    .line 40
    iput v0, p0, Lcom/baidu/mobstat/bt;->c:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/bt;->d:I

    .line 43
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/bt;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/bt;->g:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/bt;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/baidu/mobstat/bt;->d:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/bt;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/mobstat/bt;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object p1
.end method

.method public static a()Lcom/baidu/mobstat/bt;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/baidu/mobstat/bt;->a:Lcom/baidu/mobstat/bt;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/bt;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->f:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/bt;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/mobstat/bt;->f:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/bt;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/bt;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/bt;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/bt;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/bt;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/baidu/mobstat/bt;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobstat/bt;)Lcom/baidu/mobstat/SendStrategyEnum;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 254
    :goto_0
    if-nez v1, :cond_0

    .line 269
    :goto_1
    return-void

    .line 261
    :cond_0
    :try_start_1
    const-string v0, "trace"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 262
    const-string v2, "failed_cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 263
    const-string v4, "failed_cnt"

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 264
    :catch_0
    move-exception v0

    goto :goto_2

    .line 250
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-boolean v1, p0, Lcom/baidu/mobstat/bt;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    :goto_0
    return v0

    .line 303
    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2}, Lcom/baidu/mobstat/bt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    const/4 v0, 0x1

    .line 309
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send log data over. result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/baidu/mobstat/bt;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/baidu/mobstat/bt;->c:I

    return v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/bt;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/bt;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/baidu/mobstat/bt;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bx;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/bx;-><init>(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/baidu/mobstat/bt;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-static {p1, p2}, Lcom/baidu/mobstat/co;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 330
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 331
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 332
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 333
    const-string v0, "Content-Type"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 337
    const-string v0, "AdUtil.httpPost connected"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 340
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    .line 341
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 342
    invoke-virtual {v0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 344
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 348
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 356
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_2

    .line 357
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; contentResponse = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 360
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 362
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 360
    return-object v0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 372
    const-string v0, "httpPostEncrypt"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 374
    invoke-static {p1, p2}, Lcom/baidu/mobstat/co;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 377
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 378
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 379
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 380
    const-string v0, "Content-Type"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/baidu/mobstat/cm;->a()[B

    move-result-object v0

    .line 383
    invoke-static {}, Lcom/baidu/mobstat/cm;->b()[B

    move-result-object v2

    .line 385
    const-string v3, "key"

    invoke-static {v0}, Lcom/baidu/mobstat/cx;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v3, "iv"

    invoke-static {v2}, Lcom/baidu/mobstat/cx;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v3, "utf-8"

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/baidu/mobstat/cm;->a([B[B[B)[B

    move-result-object v0

    .line 390
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 392
    const-string v2, "AdUtil.httpPost connected"

    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 395
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 396
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 397
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 401
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 409
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_2

    .line 410
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; contentResponse = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 413
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 415
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 413
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 59
    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 60
    iput p1, p0, Lcom/baidu/mobstat/bt;->c:I

    .line 62
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 92
    :cond_0
    if-nez p1, :cond_1

    .line 121
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->g:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/bu;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/bu;-><init>(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .locals 3

    .prologue
    const/16 v2, 0x18

    .line 65
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    if-lez p3, :cond_1

    if-gt p3, v2, :cond_1

    .line 67
    iput p3, p0, Lcom/baidu/mobstat/bt;->d:I

    .line 68
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/bt;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 69
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bt;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    .line 70
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/bt;->d:I

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V

    .line 81
    :cond_0
    :goto_0
    iput-boolean p4, p0, Lcom/baidu/mobstat/bt;->b:Z

    .line 82
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mobstat/bt;->b:Z

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setOnlyWifi(Landroid/content/Context;Z)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sstype is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bt;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " And timeInterval is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/bt;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " And mOnlyWifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mobstat/bt;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 84
    return-void

    .line 72
    :cond_1
    const-string v0, "timeInterval is invalid, new strategy does not work"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    iput-object p2, p0, Lcom/baidu/mobstat/bt;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 76
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bt;->e:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v1}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    .line 77
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__send_data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/baidu/mobstat/co;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 129
    iget v0, p0, Lcom/baidu/mobstat/bt;->d:I

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 131
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/bt;->f:Ljava/util/Timer;

    .line 132
    iget-object v0, p0, Lcom/baidu/mobstat/bt;->f:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/mobstat/bw;

    invoke-direct {v1, p0, v4}, Lcom/baidu/mobstat/bw;-><init>(Lcom/baidu/mobstat/bt;Landroid/content/Context;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 141
    return-void
.end method
