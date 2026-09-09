.class public Lcom/baidu/mobstat/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/baidu/mobstat/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/baidu/mobstat/ba;

    invoke-direct {v0}, Lcom/baidu/mobstat/ba;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ba;->a:Lcom/baidu/mobstat/ba;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/baidu/mobstat/be;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/be;-><init>(Lorg/json/JSONObject;)V

    .line 116
    iget-boolean v1, v0, Lcom/baidu/mobstat/be;->a:Z

    sput-boolean v1, Lcom/baidu/mobstat/bc;->b:Z

    .line 117
    iget-object v1, v0, Lcom/baidu/mobstat/be;->b:Ljava/lang/String;

    sput-object v1, Lcom/baidu/mobstat/bc;->c:Ljava/lang/String;

    .line 118
    iget-boolean v0, v0, Lcom/baidu/mobstat/be;->c:Z

    sput-boolean v0, Lcom/baidu/mobstat/bc;->d:Z

    .line 119
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 256
    sget-object v1, Lcom/baidu/mobstat/y;->a:Lcom/baidu/mobstat/y;

    invoke-virtual {v1}, Lcom/baidu/mobstat/y;->b()Z

    move-result v1

    .line 257
    if-nez v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    sget-object v1, Lcom/baidu/mobstat/y;->b:Lcom/baidu/mobstat/y;

    invoke-virtual {v1}, Lcom/baidu/mobstat/y;->b()Z

    move-result v1

    .line 262
    if-eqz v1, :cond_0

    .line 266
    sget-object v1, Lcom/baidu/mobstat/y;->c:Lcom/baidu/mobstat/y;

    invoke-virtual {v1}, Lcom/baidu/mobstat/y;->b()Z

    move-result v1

    .line 267
    if-eqz v1, :cond_0

    .line 271
    sget-object v1, Lcom/baidu/mobstat/y;->d:Lcom/baidu/mobstat/y;

    invoke-virtual {v1}, Lcom/baidu/mobstat/y;->b()Z

    move-result v1

    .line 272
    if-eqz v1, :cond_0

    .line 276
    sget-object v1, Lcom/baidu/mobstat/y;->e:Lcom/baidu/mobstat/y;

    invoke-virtual {v1}, Lcom/baidu/mobstat/y;->b()Z

    move-result v1

    .line 277
    if-eqz v1, :cond_0

    .line 281
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 289
    :try_start_0
    const-string v1, "he"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 292
    add-int/2addr v0, v1

    .line 300
    :goto_0
    const-string v1, "APP_MEM"

    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Lcom/baidu/mobstat/az;->b()Z

    move-result v1

    .line 303
    if-nez v1, :cond_0

    .line 304
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 305
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 306
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 309
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 311
    :try_start_1
    const-string v1, "app_mem3"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 314
    add-int/2addr v0, v1

    move v1, v0

    .line 321
    :goto_1
    const-string v0, "APP_APK"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/baidu/mobstat/y;->e:Lcom/baidu/mobstat/y;

    const/16 v3, 0x5000

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object v0

    .line 323
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 324
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 293
    :catch_0
    move-exception v1

    .line 294
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 315
    :catch_1
    move-exception v1

    .line 316
    invoke-static {v1}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    :cond_0
    move v1, v0

    goto :goto_1

    .line 329
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 331
    :try_start_2
    const-string v0, "app_apk3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 334
    add-int/2addr v1, v0

    .line 340
    :cond_2
    :goto_3
    const-string v0, "APP_CHANGE"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/baidu/mobstat/y;->d:Lcom/baidu/mobstat/y;

    const/16 v3, 0x2800

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object v0

    .line 342
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 335
    :catch_2
    move-exception v0

    .line 336
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 348
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 350
    :try_start_3
    const-string v0, "app_change3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    .line 353
    add-int/2addr v1, v0

    .line 359
    :cond_4
    :goto_5
    const-string v0, "APP_TRACE"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/baidu/mobstat/y;->c:Lcom/baidu/mobstat/y;

    const/16 v3, 0x3c00

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object v0

    .line 361
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    .line 354
    :catch_3
    move-exception v0

    .line 355
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 367
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 370
    :try_start_4
    const-string v0, "app_trace3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    .line 373
    add-int/2addr v1, v0

    .line 379
    :cond_6
    :goto_7
    const-string v0, "APP_LIST"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 380
    sget-object v0, Lcom/baidu/mobstat/y;->b:Lcom/baidu/mobstat/y;

    const v3, 0xb400

    invoke-virtual {v0, v3}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object v0

    .line 381
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_8

    .line 374
    :catch_4
    move-exception v0

    .line 375
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 387
    :cond_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 390
    :try_start_5
    const-string v0, "app_list3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    .line 393
    add-int/2addr v1, v0

    .line 399
    :cond_8
    :goto_9
    const-string v0, "AP_LIST"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 400
    const v0, 0x2d000

    sub-int/2addr v0, v1

    .line 401
    sget-object v3, Lcom/baidu/mobstat/y;->a:Lcom/baidu/mobstat/y;

    invoke-virtual {v3, v0}, Lcom/baidu/mobstat/y;->a(I)Ljava/util/List;

    move-result-object v0

    .line 402
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    .line 394
    :catch_5
    move-exception v0

    .line 395
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 408
    :cond_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 410
    :try_start_6
    const-string v0, "ap_list3"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v0

    .line 413
    add-int/2addr v1, v0

    .line 419
    :cond_a
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log in bytes is almost :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 421
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 422
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 424
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 426
    :try_start_7
    const-string v2, "payload"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    invoke-static {}, Lcom/baidu/mobstat/al;->a()Lcom/baidu/mobstat/al;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/al;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 431
    :goto_c
    return-void

    .line 414
    :catch_6
    move-exception v0

    .line 415
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 428
    :catch_7
    move-exception v0

    .line 429
    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 128
    const-string v0, "collectAPWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/baidu/mobstat/u;->a:Lcom/baidu/mobstat/u;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v2

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 132
    invoke-virtual {v0}, Lcom/baidu/mobstat/az;->e()J

    move-result-wide v0

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": last time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; time interval: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 136
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    sub-long v2, v4, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 137
    :cond_0
    const-string v0, "collectAPWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;)V

    .line 141
    :cond_1
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 150
    const-string v0, "collectAPPListWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v2

    .line 155
    sget-object v3, Lcom/baidu/mobstat/u;->b:Lcom/baidu/mobstat/u;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v4

    .line 156
    invoke-virtual {v2}, Lcom/baidu/mobstat/az;->f()J

    move-result-wide v6

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now time: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ": last time: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "; userInterval : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 158
    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    sub-long v8, v0, v4

    cmp-long v3, v8, v6

    if-gtz v3, :cond_0

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mobstat/az;->a(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    :cond_0
    const-string v3, "collectUserAPPListWithStretegy 2"

    invoke-static {v3}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 161
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Z)V

    .line 164
    :cond_1
    sget-object v3, Lcom/baidu/mobstat/u;->c:Lcom/baidu/mobstat/u;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v4

    .line 165
    invoke-virtual {v2}, Lcom/baidu/mobstat/az;->g()J

    move-result-wide v2

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": last time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; sysInterval : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 167
    cmp-long v6, v4, v10

    if-eqz v6, :cond_2

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 168
    :cond_2
    const-string v0, "collectSysAPPListWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Z)V

    .line 172
    :cond_3
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 181
    const-string v0, "collectAPPTraceWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v2

    .line 197
    sget-object v3, Lcom/baidu/mobstat/u;->e:Lcom/baidu/mobstat/u;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v4

    .line 198
    invoke-virtual {v2}, Lcom/baidu/mobstat/az;->i()J

    move-result-wide v2

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": last time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; time interval: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 200
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 201
    :cond_0
    const-string v0, "collectAPPTraceWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Z)V

    .line 205
    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 213
    const-string v0, "collectAPKWithStretegy 1"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 216
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v2

    .line 218
    sget-object v3, Lcom/baidu/mobstat/u;->g:Lcom/baidu/mobstat/u;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v4

    .line 219
    invoke-virtual {v2}, Lcom/baidu/mobstat/az;->h()J

    move-result-wide v2

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": last time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; interval : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 221
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 222
    :cond_0
    const-string v0, "collectAPKWithStretegy 2"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;)V

    .line 226
    :cond_1
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 241
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/u;->h:Lcom/baidu/mobstat/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    .line 243
    invoke-static {p1}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/baidu/mobstat/ba;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    add-int/lit8 v1, v0, 0x1

    if-lez v0, :cond_0

    .line 249
    invoke-static {v2}, Lcom/baidu/mobstat/v;->c(Lorg/json/JSONObject;)V

    .line 251
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/baidu/mobstat/ba;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    move v0, v1

    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 237
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/u;->i:Lcom/baidu/mobstat/u;

    invoke-virtual {v0, v1, p2, p3}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;J)V

    .line 238
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/az;->a(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    .line 52
    const-string v0, "startDataAnynalyzed start"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/ba;->a(Lorg/json/JSONObject;)V

    .line 56
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/baidu/mobstat/az;->a()Z

    move-result v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is data collect closed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 60
    if-nez v1, :cond_4

    .line 61
    sget-object v1, Lcom/baidu/mobstat/y;->a:Lcom/baidu/mobstat/y;

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/y;->b(I)Z

    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->c(Landroid/content/Context;)V

    .line 66
    :cond_0
    sget-object v1, Lcom/baidu/mobstat/y;->b:Lcom/baidu/mobstat/y;

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/y;->b(I)Z

    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->d(Landroid/content/Context;)V

    .line 71
    :cond_1
    sget-object v1, Lcom/baidu/mobstat/y;->c:Lcom/baidu/mobstat/y;

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/y;->b(I)Z

    move-result v1

    .line 72
    if-nez v1, :cond_2

    .line 73
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->e(Landroid/content/Context;)V

    .line 76
    :cond_2
    sget-boolean v1, Lcom/baidu/mobstat/bc;->e:Z

    if-eqz v1, :cond_3

    .line 77
    sget-object v1, Lcom/baidu/mobstat/y;->e:Lcom/baidu/mobstat/y;

    invoke-virtual {v1, v4}, Lcom/baidu/mobstat/y;->b(I)Z

    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->f(Landroid/content/Context;)V

    .line 83
    :cond_3
    invoke-static {p1}, Lcom/baidu/mobstat/cz;->p(Landroid/content/Context;)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/baidu/mobstat/az;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    const-string v0, "sendLog"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ba;->g(Landroid/content/Context;)V

    .line 110
    :cond_4
    :goto_0
    const-string v0, "startDataAnynalyzed finished"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 111
    return-void

    .line 87
    :cond_5
    if-nez v1, :cond_6

    .line 88
    const-string v0, "isWifiAvailable = false, will not sendLog"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_6
    const-string v0, "can not sendLog due to time stratergy"

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    .line 438
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/baidu/mobstat/u;->i:Lcom/baidu/mobstat/u;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/az;->a(Lcom/baidu/mobstat/u;)J

    move-result-wide v2

    .line 441
    invoke-virtual {v0}, Lcom/baidu/mobstat/az;->c()J

    move-result-wide v0

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 444
    sub-long v6, v4, v2

    cmp-long v6, v6, v0

    if-lez v6, :cond_0

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nowTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";timeInteveral="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x1

    .line 453
    :goto_0
    return v0

    .line 450
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no need to update, checkWithLastUpdateTime lastUpdateTime ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nowTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";timeInteveral="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/az;->b(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 457
    invoke-static {p1}, Lcom/baidu/mobstat/az;->a(Landroid/content/Context;)Lcom/baidu/mobstat/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/az;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ba;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
