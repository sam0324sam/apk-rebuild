.class public Lcom/baidu/bottom/service/BottomReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/cy;

.field private static b:J

.field private static c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/baidu/bottom/service/BottomReceiver;->b:J

    return-wide v0
.end method

.method public static synthetic a(J)J
    .locals 0

    .prologue
    .line 25
    sput-wide p0, Lcom/baidu/bottom/service/BottomReceiver;->b:J

    return-wide p0
.end method

.method public static synthetic a(Lcom/baidu/mobstat/cy;)Lcom/baidu/mobstat/cy;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/cy;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 78
    sget-wide v4, Lcom/baidu/bottom/service/BottomReceiver;->c:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    sput-wide v2, Lcom/baidu/bottom/service/BottomReceiver;->c:J

    .line 86
    invoke-static {p1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;)V

    .line 88
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/baidu/bottom/service/BottomReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    invoke-static {p1, v1, v0}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/baidu/bottom/service/BottomReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/cy;

    if-eqz v0, :cond_1

    .line 36
    const-string v0, "Bottom has alread analyzed."

    invoke-static {v0}, Lcom/baidu/mobstat/bd;->a(Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v0, Lcom/baidu/mobstat/cy;

    invoke-direct {v0}, Lcom/baidu/mobstat/cy;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sput-object v0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/cy;

    .line 44
    new-instance v1, Lcom/baidu/mobstat/at;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/baidu/mobstat/at;-><init>(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/baidu/mobstat/cy;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
