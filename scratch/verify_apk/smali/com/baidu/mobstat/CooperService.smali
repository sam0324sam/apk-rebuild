.class public Lcom/baidu/mobstat/CooperService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ICooperService;


# static fields
.field private static a:Lcom/baidu/mobstat/CooperService;


# instance fields
.field private b:Lcom/baidu/mobstat/bq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/baidu/mobstat/bq;

    invoke-direct {v0}, Lcom/baidu/mobstat/bq;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    invoke-static {p0}, Lcom/baidu/mobstat/cz;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    .line 163
    if-eqz p2, :cond_1

    .line 164
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v0, ""

    .line 173
    :cond_0
    return-object v0

    .line 166
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    invoke-static {p0}, Lcom/baidu/mobstat/cz;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    invoke-static {p0}, Lcom/baidu/mobstat/cz;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_0
    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getAppChannelWithCode(Landroid/content/Context;)Z

    move-result v0

    .line 409
    if-eqz v0, :cond_1

    .line 410
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getAppChannelWithPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    .line 413
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    const-string v1, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    return-object v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized instance()Lcom/baidu/mobstat/CooperService;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/baidu/mobstat/CooperService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/baidu/mobstat/CooperService;

    invoke-direct {v0}, Lcom/baidu/mobstat/CooperService;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    .line 49
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkCellLocationSetting(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 534
    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkGPSLocationSetting(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 529
    const-string v0, "BaiduMobAd_GPS_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public checkWifiLocationSetting(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 524
    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableDeviceMac(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 555
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/BasicStoreTools;->setMacEnabledTrick(Landroid/content/Context;Z)V

    .line 556
    return-void
.end method

.method public getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    const-string v1, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/cz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget v0, v0, Lcom/baidu/mobstat/bq;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->f(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mobstat/bq;->h:I

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget v0, v0, Lcom/baidu/mobstat/bq;->h:I

    return v0
.end method

.method public getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->i:Ljava/lang/String;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCUID(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getGenerateDeviceCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, v1, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-static {p1}, Lcom/baidu/mobstat/db;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    .line 218
    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, v1, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, v1, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, v1, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setGenerateDeviceCUID(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 232
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    .line 243
    :goto_1
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, v0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    .line 236
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cp;->a([B)[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/mobstat/cn;->b(I[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 239
    :catch_1
    move-exception v0

    .line 240
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    .line 243
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDevicImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    const-string v1, ""

    .line 259
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 260
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    .line 333
    :goto_0
    return-object v0

    .line 283
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/baidu/mobstat/BasicStoreTools;->getForTV(Landroid/content/Context;)Z

    move-result v1

    .line 284
    if-eqz v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_1
    if-nez p1, :cond_2

    .line 291
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_2
    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 296
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 297
    if-eqz v2, :cond_3

    .line 298
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 299
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 306
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    :cond_4
    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_5
    invoke-static {p2}, Lcom/baidu/mobstat/cz;->u(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 313
    :cond_6
    :try_start_1
    invoke-static {p2}, Lcom/baidu/mobstat/CooperService;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 320
    :cond_7
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 321
    :cond_8
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->getGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 325
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/baidu/mobstat/BasicStoreTools;->setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    :cond_b
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iput-object v0, v1, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, v1, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 314
    :catch_1
    move-exception v1

    .line 315
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public getHeadObject()Lcom/baidu/mobstat/bq;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    return-object v0
.end method

.method public getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getHeaderExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->s:Ljava/lang/String;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMTJSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    const-string v0, "3.8.1.1"

    return-object v0
.end method

.method public getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const-string v0, "02:00:00:00:00:00"

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-nez p2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, v1, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getAppDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iput-object v0, v1, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v1, v1, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setAppDeviceMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->u:Ljava/lang/String;

    .line 201
    :goto_0
    return-object v0

    .line 186
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getAppDeviceMacTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iput-object v0, v1, Lcom/baidu/mobstat/bq;->u:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->u:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/cz;->c(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iput-object v0, v1, Lcom/baidu/mobstat/bq;->u:Ljava/lang/String;

    .line 196
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/BasicStoreTools;->setAppDeviceMacTv(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->u:Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->u:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->p:Ljava/lang/String;

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getOSSysVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->d:Ljava/lang/String;

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->c:Ljava/lang/String;

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->n:Ljava/lang/String;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->o:Ljava/lang/String;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    iget-object v0, v0, Lcom/baidu/mobstat/bq;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/cn;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagValue()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 543
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/bq;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 62
    return-void
.end method

.method public isDeviceMacEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getMacEnabledTrick(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetHeadSign()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/bq;->y:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setHeaderExt(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p2}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/bq;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/bq;->a(Lorg/json/JSONObject;)V

    .line 85
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/BasicStoreTools;->setHeaderExt(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method
