.class Lcom/baidu/mobstat/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:J

.field private volatile d:J

.field private volatile e:J

.field private volatile f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/cb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->a:J

    .line 23
    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->b:J

    .line 26
    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->c:J

    .line 29
    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->d:J

    .line 32
    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->e:J

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/ca;->f:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ca;->g:Ljava/util/List;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->a:J

    .line 43
    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->e:J

    .line 44
    return-void
.end method

.method public static a(Lcom/baidu/mobstat/cb;J)Lorg/json/JSONObject;
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    .line 193
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 196
    :try_start_0
    const-string v2, "n"

    invoke-virtual {p0}, Lcom/baidu/mobstat/cb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v2, "d"

    invoke-virtual {p0}, Lcom/baidu/mobstat/cb;->c()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {p0}, Lcom/baidu/mobstat/cb;->d()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 200
    const-string v5, "ps"

    cmp-long v6, v2, v0

    if-gez v6, :cond_1

    :goto_0
    invoke-virtual {v4, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    const-string v0, "t"

    invoke-virtual {p0}, Lcom/baidu/mobstat/cb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v1, "at"

    invoke-virtual {p0}, Lcom/baidu/mobstat/cb;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    invoke-virtual {p0}, Lcom/baidu/mobstat/cb;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "ext"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_2
    return-object v4

    :cond_1
    move-wide v0, v2

    .line 200
    goto :goto_0

    .line 203
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private a(Ljava/util/List;Lcom/baidu/mobstat/cb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/cb;",
            ">;",
            "Lcom/baidu/mobstat/cb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cb;

    .line 110
    invoke-static {v0}, Lcom/baidu/mobstat/cb;->b(Lcom/baidu/mobstat/cb;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/baidu/mobstat/cb;->b(Lcom/baidu/mobstat/cb;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_4
    invoke-static {v0}, Lcom/baidu/mobstat/cb;->b(Lcom/baidu/mobstat/cb;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/mobstat/cb;->b(Lcom/baidu/mobstat/cb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/baidu/mobstat/cb;->c(Lcom/baidu/mobstat/cb;)Z

    move-result v1

    invoke-static {p2}, Lcom/baidu/mobstat/cb;->c(Lcom/baidu/mobstat/cb;)Z

    move-result v2

    if-ne v1, v2, :cond_6

    .line 116
    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_6
    invoke-static {v0}, Lcom/baidu/mobstat/cb;->c(Lcom/baidu/mobstat/cb;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/cb;->a(Lcom/baidu/mobstat/cb;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/ca;->c(J)V

    .line 55
    iput-wide v2, p0, Lcom/baidu/mobstat/ca;->b:J

    .line 57
    iput-wide v2, p0, Lcom/baidu/mobstat/ca;->c:J

    .line 59
    iput-wide v2, p0, Lcom/baidu/mobstat/ca;->d:J

    .line 62
    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->e:J

    .line 64
    iput v4, p0, Lcom/baidu/mobstat/ca;->f:I

    .line 66
    iput v4, p0, Lcom/baidu/mobstat/ca;->f:I

    .line 68
    iget-object v0, p0, Lcom/baidu/mobstat/ca;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/baidu/mobstat/ca;->f:I

    .line 81
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/baidu/mobstat/ca;->c:J

    .line 73
    return-void
.end method

.method public a(Lcom/baidu/mobstat/cb;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/mobstat/ca;->g:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/ca;->a(Ljava/util/List;Lcom/baidu/mobstat/cb;)V

    .line 91
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/baidu/mobstat/ca;->a:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/baidu/mobstat/ca;->d:J

    .line 77
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/baidu/mobstat/ca;->b:J

    return-wide v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/baidu/mobstat/ca;->a:J

    .line 132
    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 165
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 168
    :try_start_0
    const-string v0, "s"

    iget-wide v4, p0, Lcom/baidu/mobstat/ca;->a:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    const-string v0, "e"

    iget-wide v4, p0, Lcom/baidu/mobstat/ca;->b:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    const-string v0, "i"

    iget-wide v4, p0, Lcom/baidu/mobstat/ca;->e:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 172
    const-string v0, "c"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v0, "s2"

    iget-wide v4, p0, Lcom/baidu/mobstat/ca;->c:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 174
    const-string v0, "e2"

    iget-wide v4, p0, Lcom/baidu/mobstat/ca;->d:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 175
    const-string v0, "pc"

    iget v1, p0, Lcom/baidu/mobstat/ca;->f:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 178
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/ca;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/baidu/mobstat/ca;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cb;

    .line 180
    iget-wide v4, p0, Lcom/baidu/mobstat/ca;->a:J

    invoke-static {v0, v4, v5}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/cb;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 184
    :cond_0
    const-string v0, "p"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    return-object v2

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string v0, "StatSession.constructJSONObject() failed"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/baidu/mobstat/ca;->b:J

    .line 159
    return-void
.end method
