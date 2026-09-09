.class Lcom/baidu/mobstat/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Z

.field private g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;)V
    .locals 2

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    .line 244
    iput-wide p4, p0, Lcom/baidu/mobstat/cb;->d:J

    .line 245
    iput-wide p6, p0, Lcom/baidu/mobstat/cb;->e:J

    .line 246
    iput-boolean p8, p0, Lcom/baidu/mobstat/cb;->f:Z

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 249
    if-eqz p9, :cond_0

    .line 250
    invoke-virtual {p9}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 252
    :cond_0
    iput-object v0, p0, Lcom/baidu/mobstat/cb;->g:Lorg/json/JSONObject;

    .line 253
    return-void
.end method

.method static synthetic b(Lcom/baidu/mobstat/cb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mobstat/cb;)Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/baidu/mobstat/cb;->f:Z

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/cb;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p1, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    .line 281
    iget-object v0, p1, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    .line 282
    iget-object v0, p1, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    .line 283
    iget-wide v0, p1, Lcom/baidu/mobstat/cb;->d:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cb;->d:J

    .line 284
    iget-wide v0, p1, Lcom/baidu/mobstat/cb;->e:J

    iput-wide v0, p0, Lcom/baidu/mobstat/cb;->e:J

    .line 285
    iget-boolean v0, p1, Lcom/baidu/mobstat/cb;->f:Z

    iput-boolean v0, p0, Lcom/baidu/mobstat/cb;->f:Z

    .line 286
    iget-object v0, p1, Lcom/baidu/mobstat/cb;->g:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/baidu/mobstat/cb;->g:Lorg/json/JSONObject;

    .line 287
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/baidu/mobstat/cb;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/baidu/mobstat/cb;->e:J

    return-wide v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baidu/mobstat/cb;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/baidu/mobstat/cb;->f:Z

    return v0
.end method
