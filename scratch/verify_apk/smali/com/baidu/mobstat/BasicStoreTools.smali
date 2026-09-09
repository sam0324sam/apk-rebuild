.class public Lcom/baidu/mobstat/BasicStoreTools;
.super Lcom/baidu/mobstat/bg;
.source "SourceFile"


# static fields
.field public static final APP_FOR_TV:Ljava/lang/String; = "mtjtv"

.field public static final APP_LAST_SENDDATA:Ljava/lang/String; = "lastdata"

.field public static final APP_MAC_ADDRESS2:Ljava/lang/String; = "mtjsdkmacss2_1"

.field public static final APP_MAC_ADDRESS_TRICK:Ljava/lang/String; = "mtjsdkmactrick"

.field public static final APP_MAC_ADDRESS_TV:Ljava/lang/String; = "mtjsdkmacsstv_1"

.field public static final APP_SET_APPKEY:Ljava/lang/String; = "mjsetappkey"

.field public static final APP_SET_CHANNEL:Ljava/lang/String; = "setchannelwithcodevalue"

.field public static final APP_SET_CHANNEL_WITH_CODE:Ljava/lang/String; = "setchannelwithcode"

.field public static final AUTO_TRACE_CONFIG_FETCH_TIME:Ljava/lang/String; = "autotrace_config_fetch_time"

.field public static final AUTO_TRACE_TRACK_JS_FETCH_INTERVAL:Ljava/lang/String; = "autotrace_track_js_fetch_interval"

.field public static final AUTO_TRACE_TRACK_JS_FETCH_TIME:Ljava/lang/String; = "autotrace_track_js_fetch_time"

.field public static final DEVICE_CUID:Ljava/lang/String; = "cuidsec_1"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id_1"

.field public static final HEADER_EXT:Ljava/lang/String; = "he.ext"

.field public static final ONLY_WIFI:Ljava/lang/String; = "onlywifi"

.field public static final SEND_LOG_TYPE:Ljava/lang/String; = "sendLogtype"

.field public static final TIME_INTERVAL:Ljava/lang/String; = "timeinterval"

.field static a:Lcom/baidu/mobstat/BasicStoreTools;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/baidu/mobstat/BasicStoreTools;

    invoke-direct {v0}, Lcom/baidu/mobstat/BasicStoreTools;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/BasicStoreTools;->a:Lcom/baidu/mobstat/BasicStoreTools;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/baidu/mobstat/bg;-><init>()V

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/baidu/mobstat/BasicStoreTools;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/baidu/mobstat/BasicStoreTools;->a:Lcom/baidu/mobstat/BasicStoreTools;

    return-object v0
.end method


# virtual methods
.method protected getAppChannelWithCode(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 209
    const-string v0, "setchannelwithcode"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getAppChannelWithPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    const-string v0, "setchannelwithcodevalue"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAppDeviceMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    const-string v0, "mtjsdkmacss2_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAppDeviceMacTv(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    const-string v0, "mtjsdkmacsstv_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    const-string v0, "mjsetappkey"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoTraceConfigFetchTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 371
    const-string v0, "autotrace_config_fetch_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAutoTraceTrackJsFetchInterval(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 363
    const-string v0, "autotrace_track_js_fetch_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAutoTraceTrackJsFetchTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 355
    const-string v0, "autotrace_track_js_fetch_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/BasicStoreTools;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bg;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getFloat(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bg;->getFloat(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected getForTV(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 289
    const-string v0, "mtjtv"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getGenerateDeviceCUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    const-string v0, "cuidsec_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGenerateDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    const-string v0, "device_id_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getHeaderExt(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    const-string v0, "he.ext"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bg;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getLastData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    const-string v0, "lastdata"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bg;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getMacEnabledTrick(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 347
    const-string v0, "mtjsdkmactrick"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getOnlyWifiChannel(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "onlywifi"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getSendStrategy(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 82
    const-string v0, "sendLogtype"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getSendStrategyTime(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 103
    const-string v0, "timeinterval"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 61
    const-string v0, "__Baidu_Stat_SDK_SendRem"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bg;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bg;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bg;->putFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bg;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic putLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/mobstat/bg;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public bridge synthetic putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/mobstat/bg;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic removeString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/baidu/mobstat/bg;->removeString(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected setAppChannelWithCode(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 199
    const-string v0, "setchannelwithcode"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method protected setAppChannelWithPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    const-string v0, "setchannelwithcodevalue"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method protected setAppDeviceMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    const-string v0, "mtjsdkmacss2_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method protected setAppDeviceMacTv(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 299
    const-string v0, "mtjsdkmacsstv_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method protected setAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 219
    const-string v0, "mjsetappkey"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setAutoTraceConfigFetchTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 367
    const-string v0, "autotrace_config_fetch_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/BasicStoreTools;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 368
    return-void
.end method

.method public setAutoTraceTrackJsFetchInterval(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 359
    const-string v0, "autotrace_track_js_fetch_interval"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/BasicStoreTools;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 360
    return-void
.end method

.method public setAutoTraceTrackJsFetchTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 351
    const-string v0, "autotrace_track_js_fetch_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/BasicStoreTools;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 352
    return-void
.end method

.method protected setForTV(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 279
    const-string v0, "mtjtv"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method protected setGenerateDeviceCUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    const-string v0, "cuid"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    const-string v0, "cuid"

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/BasicStoreTools;->removeString(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :cond_0
    const-string v0, "cuidsec_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method protected setGenerateDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    const-string v0, "device_id_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method protected setHeaderExt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 319
    const-string v0, "he.ext"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method protected setLastData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    const-string v0, "lastdata"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method protected setMacEnabledTrick(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 338
    const-string v0, "mtjsdkmactrick"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 339
    return-void
.end method

.method protected setOnlyWifi(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "onlywifi"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method protected setSendStrategy(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 72
    const-string v0, "sendLogtype"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method protected setSendStrategyTime(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 93
    const-string v0, "timeinterval"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/BasicStoreTools;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    return-void
.end method
