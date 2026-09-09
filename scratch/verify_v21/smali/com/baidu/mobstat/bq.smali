.class Lcom/baidu/mobstat/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:I

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "Android"

    sput-object v0, Lcom/baidu/mobstat/bq;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/bq;->b:Z

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->e:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/bq;->h:I

    .line 35
    iput-object v1, p0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/bq;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/co;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 78
    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/co;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 79
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/co;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 80
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/co;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 82
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->c:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSSysVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->d:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->o:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->p:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->y:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->z:Lorg/json/JSONObject;

    .line 92
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/baidu/mobstat/CooperService;->getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getForTV(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    iput-object v1, p0, Lcom/baidu/mobstat/bq;->e:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->u(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "2"

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->e:Ljava/lang/String;

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/bq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->isDeviceMacEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 105
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/CooperService;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :goto_2
    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1, p1}, Lcom/baidu/mobstat/cz;->f(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->v:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :goto_3
    const/4 v1, 0x1

    :try_start_4
    invoke-static {p1, v1}, Lcom/baidu/mobstat/cz;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->w:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    :try_start_6
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/CooperService;->getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->n:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 131
    :goto_5
    :try_start_7
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/bq;->k:I

    .line 132
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/bq;->l:I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 134
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 135
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 136
    iget v0, p0, Lcom/baidu/mobstat/bq;->k:I

    iget v1, p0, Lcom/baidu/mobstat/bq;->l:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/bq;->k:I

    .line 137
    iget v0, p0, Lcom/baidu/mobstat/bq;->k:I

    iget v1, p0, Lcom/baidu/mobstat/bq;->l:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/bq;->l:I

    .line 138
    iget v0, p0, Lcom/baidu/mobstat/bq;->k:I

    iget v1, p0, Lcom/baidu/mobstat/bq;->l:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/bq;->k:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 144
    :cond_2
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 148
    :try_start_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/bq;->h:I

    .line 149
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->i:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 155
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->checkCellLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->q:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 165
    :goto_8
    :try_start_b
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->checkGPSLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->r:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 175
    :goto_9
    :try_start_c
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->s:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 180
    :goto_a
    :try_start_d
    invoke-static {}, Lcom/baidu/mobstat/cz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->x:Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/bq;->b:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 93
    :cond_3
    :try_start_e
    const-string v1, "0"

    goto/16 :goto_1

    .line 106
    :catch_0
    move-exception v1

    .line 107
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 112
    :catch_1
    move-exception v1

    .line 113
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 118
    :catch_2
    move-exception v1

    .line 119
    invoke-static {v1}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 126
    :catch_3
    move-exception v0

    .line 127
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 140
    :catch_4
    move-exception v0

    .line 141
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 150
    :catch_5
    move-exception v0

    .line 151
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7

    .line 158
    :cond_4
    :try_start_f
    const-string v0, "0_0_0"

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->q:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 160
    :catch_6
    move-exception v0

    .line 161
    :try_start_10
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_8

    .line 168
    :cond_5
    :try_start_11
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/bq;->r:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_9

    .line 170
    :catch_7
    move-exception v0

    .line 171
    :try_start_12
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 176
    :catch_8
    move-exception v0

    .line 177
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_a
.end method

.method public declared-synchronized a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/bq;->a(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "header has been installed; header is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/bq;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/baidu/mobstat/bq;->z:Lorg/json/JSONObject;

    .line 245
    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    const-string v1, "o"

    sget-object v0, Lcom/baidu/mobstat/bq;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v0, "st"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v1, "s"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v1, "sv"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_2
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v1, "k"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_3
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v1, "pt"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "0"

    :goto_4
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v0, "i"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v0, "v"

    const-string v1, "3.8.1.1"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v0, "sc"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string v0, "a"

    iget v1, p0, Lcom/baidu/mobstat/bq;->h:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v1, "n"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->i:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_5
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v0, "d"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v1, "mc"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_6
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v1, "bm"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->v:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_7
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v1, "dd"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_8
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v1, "ii"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_9
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v0, "tg"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v0, "w"

    iget v1, p0, Lcom/baidu/mobstat/bq;->k:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    const-string v0, "h"

    iget v1, p0, Lcom/baidu/mobstat/bq;->l:I

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 206
    const-string v1, "dn"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->w:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_a
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v1, "c"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_b
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v1, "op"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->n:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_c
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v1, "m"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->o:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_d
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v1, "ma"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->p:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_e
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v0, "cl"

    iget-object v1, p0, Lcom/baidu/mobstat/bq;->q:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v1, "gl"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->r:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    :goto_f
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v1, "l"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->s:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :goto_10
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 215
    const-string v0, "pn"

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/baidu/mobstat/cz;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v1, "rom"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->x:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, ""

    :goto_11
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v0, "td"

    invoke-static {p1}, Lcom/baidu/mobstat/cz;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 221
    const-string v0, "pl"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const/4 v0, 0x0

    .line 225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    const-string v1, "scl"

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v1, "sign"

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->y:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, ""

    :goto_12
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->z:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/bq;->z:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    const-string v0, "ext"

    iget-object v1, p0, Lcom/baidu/mobstat/bq;->z:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "header is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; len: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_13
    monitor-exit p0

    return-void

    .line 187
    :cond_3
    :try_start_1
    sget-object v0, Lcom/baidu/mobstat/bq;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->d:Ljava/lang/String;

    goto/16 :goto_2

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->f:Ljava/lang/String;

    goto/16 :goto_3

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->e:Ljava/lang/String;

    goto/16 :goto_4

    .line 197
    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->i:Ljava/lang/String;

    goto/16 :goto_5

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->t:Ljava/lang/String;

    goto/16 :goto_6

    .line 200
    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->v:Ljava/lang/String;

    goto/16 :goto_7

    .line 201
    :cond_b
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->j:Ljava/lang/String;

    goto/16 :goto_8

    .line 202
    :cond_c
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->g:Ljava/lang/String;

    goto/16 :goto_9

    .line 206
    :cond_d
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->w:Ljava/lang/String;

    goto/16 :goto_a

    .line 207
    :cond_e
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->m:Ljava/lang/String;

    goto/16 :goto_b

    .line 208
    :cond_f
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->n:Ljava/lang/String;

    goto/16 :goto_c

    .line 209
    :cond_10
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->o:Ljava/lang/String;

    goto/16 :goto_d

    .line 210
    :cond_11
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->p:Ljava/lang/String;

    goto/16 :goto_e

    .line 212
    :cond_12
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->r:Ljava/lang/String;

    goto/16 :goto_f

    .line 213
    :cond_13
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->s:Ljava/lang/String;

    goto/16 :goto_10

    .line 216
    :cond_14
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->x:Ljava/lang/String;

    goto/16 :goto_11

    .line 230
    :cond_15
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->y:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_12

    .line 237
    :catch_0
    move-exception v0

    .line 238
    :try_start_2
    const-string v0, "header ini error"

    .line 239
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_13

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
