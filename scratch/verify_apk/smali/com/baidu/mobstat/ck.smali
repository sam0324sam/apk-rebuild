.class Lcom/baidu/mobstat/ck;
.super Lcom/baidu/mobstat/bg;
.source "SourceFile"


# static fields
.field static a:Lcom/baidu/mobstat/ck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/baidu/mobstat/ck;

    invoke-direct {v0}, Lcom/baidu/mobstat/ck;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ck;->a:Lcom/baidu/mobstat/ck;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/baidu/mobstat/bg;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/ck;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/mobstat/ck;->a:Lcom/baidu/mobstat/ck;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 56
    const-string v0, "session_first_visit_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/ck;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 47
    const-string v0, "session_first_visit_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/ck;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 48
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    const-string v0, "session_today_visit_count"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/ck;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 74
    const-string v0, "session_last_visit_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/ck;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 65
    const-string v0, "session_last_visit_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/ck;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 66
    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    const-string v0, "session_recent_visit"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/ck;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected c(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 92
    const-string v0, "session_visit_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/ck;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 83
    const-string v0, "session_visit_interval"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/ck;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 84
    return-void
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, "session_today_visit_count"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/ck;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    const-string v0, "session_recent_visit"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/ck;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 35
    const-string v0, "baidu_mtj_sdk_record"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "baidu_mtj_sdk_record"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method
