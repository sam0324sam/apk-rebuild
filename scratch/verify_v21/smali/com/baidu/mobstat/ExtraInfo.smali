.class public Lcom/baidu/mobstat/ExtraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string p0, ""

    .line 42
    :cond_0
    const/16 v0, 0x400

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    const-string p0, ""

    .line 47
    :cond_1
    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_1
    if-le v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public dumpToJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 131
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const-string v0, "v1"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const-string v0, "v2"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    const-string v0, "v3"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    const-string v0, "v4"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    const-string v0, "v5"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    const-string v0, "v6"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    const-string v0, "v7"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 155
    const-string v0, "v8"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 158
    const-string v0, "v9"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 161
    const-string v0, "v10"

    iget-object v2, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_9
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getV1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getV10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getV2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getV3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getV4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getV5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getV6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getV7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getV8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getV9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public setV1(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setV10(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->j:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setV2(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setV3(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setV4(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->d:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setV5(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->e:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setV6(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->f:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setV7(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->g:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setV8(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->h:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setV9(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-static {p1}, Lcom/baidu/mobstat/ExtraInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExtraInfo;->i:Ljava/lang/String;

    .line 120
    return-void
.end method
