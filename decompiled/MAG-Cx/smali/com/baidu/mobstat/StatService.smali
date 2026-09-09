.class public Lcom/baidu/mobstat/StatService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXCEPTION_LOG:I = 0x1

.field public static final JAVA_EXCEPTION_LOG:I = 0x10

.field private static a:Z

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    const-string v1, ""

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 76
    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 77
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v2, 0x0

    .line 84
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    :goto_1
    if-eqz v2, :cond_0

    .line 93
    const-class v4, Landroid/app/Activity;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    if-eqz p0, :cond_2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_2
    return-object v0

    .line 97
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 85
    :catch_0
    move-exception v4

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 954
    invoke-static {p0}, Lcom/baidu/mobstat/ActivityLifeTask;->registerActivityLifeCallback(Landroid/content/Context;)V

    .line 955
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 887
    if-nez p0, :cond_0

    .line 888
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    if-nez p1, :cond_1

    .line 892
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "webview can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 897
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 898
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 901
    if-nez p4, :cond_2

    .line 902
    new-instance v0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;

    invoke-direct {v0, p0, p2, v3, v3}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebViewClient;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;Lcom/baidu/mobstat/autotrace/WebViewInterface;)V

    .line 903
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 921
    :goto_0
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 922
    return-void

    .line 905
    :cond_2
    new-instance v0, Lcom/baidu/mobstat/autotrace/WebViewInterface;

    invoke-direct {v0}, Lcom/baidu/mobstat/autotrace/WebViewInterface;-><init>()V

    .line 906
    const-string v1, "WebViewInterface"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    new-instance v1, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;

    new-instance v2, Lcom/baidu/mobstat/autotrace/AutoTrace$WebPageCallback;

    invoke-direct {v2}, Lcom/baidu/mobstat/autotrace/AutoTrace$WebPageCallback;-><init>()V

    invoke-direct {v1, p0, p3, v2, v0}, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;-><init>(Landroid/content/Context;Landroid/webkit/WebChromeClient;Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;Lcom/baidu/mobstat/autotrace/WebViewInterface;)V

    .line 910
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 911
    const v0, -0x17701

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 7

    .prologue
    .line 307
    const-class v6, Lcom/baidu/mobstat/StatService;

    monitor-enter v6

    :try_start_0
    const-string v0, "onPause(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 317
    :goto_0
    monitor-exit v6

    return-void

    .line 311
    :cond_0
    :try_start_1
    const-class v0, Landroid/app/Activity;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "onPause(Context context)\u4e0d\u5728Activity.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Activity.onPause()."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 316
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/SessionAnalysis;->analysisPause(Landroid/content/Context;JZLcom/baidu/mobstat/ExtraInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 8

    .prologue
    .line 271
    const-class v7, Lcom/baidu/mobstat/StatService;

    monitor-enter v7

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    const-string v0, "onPageEnd :parame=null || empty"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :goto_0
    monitor-exit v7

    return-void

    .line 276
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->a(Z)Ljava/lang/String;

    move-result-object v4

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageName is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; activityName is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mobstat/SessionAnalysis;->analysisPageEnd(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    const-string v0, "onEvent(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/db;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    .line 515
    if-eqz v0, :cond_2

    .line 516
    const-string v1, "method:onEvent() \u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 521
    :cond_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 523
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;Z)V

    .line 527
    invoke-static {}, Lcom/baidu/mobstat/EventAnalysis;->getInstance()Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p5}, Lcom/baidu/mobstat/db;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v8, p4

    .line 527
    invoke-virtual/range {v1 .. v9}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    const-string v0, "onEventDuration(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    .line 688
    const-string v0, "onEventDuration: duration must be greater than zero"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 693
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;)V

    .line 695
    invoke-static {}, Lcom/baidu/mobstat/EventAnalysis;->getInstance()Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 696
    invoke-static {p6}, Lcom/baidu/mobstat/db;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 695
    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/EventAnalysis;->onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 6

    .prologue
    .line 584
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 585
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/ExtraInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    const-string v0, "onEventEnd(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    invoke-static {}, Lcom/baidu/mobstat/EventAnalysis;->getInstance()Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p4}, Lcom/baidu/mobstat/db;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 633
    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/EventAnalysis;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 497
    const-string v0, "onError(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/bp;->a()Lcom/baidu/mobstat/bp;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mobstat/bp;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 752
    if-nez p0, :cond_0

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":context=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    .line 754
    const/4 v0, 0x0

    .line 757
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x2

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_2

    .line 54
    aget-object v2, v3, v0

    .line 55
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 58
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 62
    :cond_0
    const/4 v1, 0x1

    .line 53
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    invoke-static {v2}, Lcom/baidu/mobstat/cw;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 69
    :cond_2
    return v1
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x0

    check-cast v0, Landroid/webkit/WebViewClient;

    invoke-static {p0, p1, v0}, Lcom/baidu/mobstat/StatService;->bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 870
    return-void
.end method

.method public static bindJSInterface(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 881
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    .line 882
    return-void
.end method

.method public static enableDeviceMac(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/CooperService;->enableDeviceMac(Landroid/content/Context;Z)V

    .line 116
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getMTJSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTestDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    invoke-static {p0}, Lcom/baidu/mobstat/cz;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 981
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/LoadCache;->hasBeenStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    const-string v0, "onErised(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 990
    :cond_2
    const-string v0, "AppKey is invalid"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/mobstat/LoadCache;->initNeededData(Landroid/content/Context;ZZ)V

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1000
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v3

    .line 1002
    invoke-static {}, Lcom/baidu/mobstat/EventAnalysis;->getInstance()Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v1

    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mobstat/EventAnalysis;->flushEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 1003
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/baidu/mobstat/DataCore;->saveLogDataToSend(Landroid/content/Context;ZZ)V

    .line 1005
    sget-wide v0, Lcom/baidu/mobstat/StatService;->b:J

    sub-long v0, v8, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1006
    invoke-static {p0}, Lcom/baidu/mobstat/cz;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-static {}, Lcom/baidu/mobstat/bt;->a()Lcom/baidu/mobstat/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bt;->a(Landroid/content/Context;)V

    .line 1008
    sput-wide v8, Lcom/baidu/mobstat/StatService;->b:J

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V

    .line 597
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 571
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 572
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 559
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 741
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-static/range {v1 .. v7}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 742
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 728
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 729
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 674
    invoke-static {p0, p1, p2, v0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 675
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p3}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;)V

    .line 663
    return-void
.end method

.method public static onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 608
    const-string v0, "onEventStart(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 617
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;)V

    .line 619
    invoke-static {}, Lcom/baidu/mobstat/EventAnalysis;->getInstance()Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    .line 619
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/EventAnalysis;->onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 295
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit v0

    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 244
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    const-string v0, "onPageStart :parame=null || empty"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_0
    monitor-exit v1

    return-void

    .line 249
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 251
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;)V

    .line 254
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/baidu/mobstat/SessionAnalysis;->analysisPageStart(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onPause(Landroid/app/Fragment;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 367
    :try_start_0
    const-string v0, "android.app.Fragment onResume :parame=null"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :goto_0
    monitor-exit v1

    return-void

    .line 371
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "android.app.Fragment onPause(Context context)\u4e0d\u5728android.app.Fragment.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in android.app.Fragment.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 377
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->analysisPause(Landroid/app/Fragment;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onPause(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 327
    const-class v0, Lcom/baidu/mobstat/StatService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit v0

    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onPause(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 342
    :try_start_0
    const-string v0, "onResume :parame=null"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_0
    monitor-exit v1

    return-void

    .line 346
    :cond_0
    :try_start_1
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v2, "onPause"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Fragment onPause(Context context)\u4e0d\u5728Fragment.onPause()\u4e2d\u88ab\u8c03\u7528||onPause(Context context)is not called in Fragment.onPause()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 351
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->analysisPause(Landroid/support/v4/app/Fragment;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onResume(Landroid/app/Fragment;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 208
    :try_start_0
    const-string v0, "onResume :parame=null"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :goto_0
    monitor-exit v1

    return-void

    .line 212
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Fragment.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Fragment.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 217
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    .line 218
    if-nez v0, :cond_2

    .line 219
    const-string v0, "can not get correct context, fragment may not attached to activity"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 225
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;)V

    .line 228
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->analysisResume(Landroid/app/Fragment;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onResume(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 146
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    :try_start_0
    const-string v0, "onResume(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    monitor-exit v1

    return-void

    .line 150
    :cond_0
    :try_start_1
    const-class v0, Landroid/app/Activity;

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Activity.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Activity.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 155
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/baidu/mobstat/SessionAnalysis;->analysisResume(Landroid/content/Context;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized onResume(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    const-class v1, Lcom/baidu/mobstat/StatService;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 174
    :try_start_0
    const-string v0, "onResume :parame=null"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    monitor-exit v1

    return-void

    .line 178
    :cond_0
    :try_start_1
    const-class v0, Landroid/support/v4/app/Fragment;

    const-string v2, "onResume"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/StatService;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "onResume(Context context)\u4e0d\u5728Fragment.onResume()\u4e2d\u88ab\u8c03\u7528||onResume(Context context)is not called in Fragment.onResume()."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 183
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 184
    if-nez v0, :cond_2

    .line 185
    const-string v0, "can not get correct fragmentActivity, fragment may not attached to activity"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 191
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;)V

    .line 194
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->analysisResume(Landroid/support/v4/app/Fragment;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 806
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 808
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 809
    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 785
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppChannel(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 767
    invoke-static {p0}, Lcom/baidu/mobstat/PrefOperate;->setAppKey(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v1, -0x17700

    .line 1071
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    const-string v0, "unable bind data to view\uff0cview tag:key -96000 has been used!"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 1078
    :goto_0
    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setDebugOn(Z)V
    .locals 1

    .prologue
    .line 845
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/baidu/mobstat/cw;->a:I

    .line 846
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static setForTv(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 857
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->setForTV(Landroid/content/Context;Z)V

    .line 859
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 860
    return-void
.end method

.method public static setLogSenderDelayed(I)V
    .locals 1

    .prologue
    .line 819
    invoke-static {}, Lcom/baidu/mobstat/bt;->a()Lcom/baidu/mobstat/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/bt;->a(I)V

    .line 820
    return-void
.end method

.method public static setOn(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 388
    const-string v0, "setOn(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    sget-boolean v0, Lcom/baidu/mobstat/StatService;->a:Z

    if-nez v0, :cond_0

    .line 396
    sput-boolean v1, Lcom/baidu/mobstat/StatService;->a:Z

    .line 399
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    .line 400
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    .line 405
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 401
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    .line 402
    invoke-static {p0, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    .line 487
    return-void
.end method

.method public static setSendLogStrategy(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    const-string v0, "setSendLogStrategy(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 456
    :cond_0
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/db;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    .line 457
    if-eqz v0, :cond_1

    .line 458
    const-string v1, "method:start() \u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 463
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 465
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;Z)V

    .line 467
    invoke-static {}, Lcom/baidu/mobstat/bt;->a()Lcom/baidu/mobstat/bt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/baidu/mobstat/bt;->a(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V

    goto :goto_0
.end method

.method public static setSessionTimeOut(I)V
    .locals 2

    .prologue
    const/16 v1, 0x258

    .line 828
    if-gtz p0, :cond_0

    .line 829
    const-string v0, "SessionTimeOut is between 1 and 600. Default value[30] is used"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    .line 837
    :goto_0
    return-void

    .line 830
    :cond_0
    if-gt p0, v1, :cond_1

    .line 831
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/SessionAnalysis;->setSessionPeriod(I)V

    goto :goto_0

    .line 833
    :cond_1
    const-string v0, "SessionTimeOut is between 1 and 600. Value[600] is used"

    invoke-static {v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/baidu/mobstat/SessionAnalysis;->instance()Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SessionAnalysis;->setSessionPeriod(I)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 420
    const-string v0, "start(...)"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 424
    :cond_0
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/db;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    .line 425
    if-eqz v0, :cond_1

    .line 426
    const-string v1, "method:start() \u88ab Application.onCreate()\u8c03\u7528\uff0cnot a good practice; \u53ef\u80fd\u7531\u4e8e\u591a\u8fdb\u7a0b\u53cd\u590d\u91cd\u542f\u7b49\u539f\u56e0\u9020\u6210Application.onCreate() \u65b9\u6cd5\u591a\u6b21\u88ab\u6267\u884c\uff0c\u5bfc\u81f4\u542f\u52a8\u6b21\u6570\u9ad8\uff1b\u5efa\u8bae\u57cb\u70b9\u5728\u7edf\u8ba1\u8def\u5f84\u89e6\u53d1\u7684\u7b2c\u4e00\u4e2a\u9875\u9762\u4e2d\uff0c\u6bd4\u5982APP\u4e3b\u9875\u9762\u4e2d"

    invoke-static {v1}, Lcom/baidu/mobstat/cw;->c(Ljava/lang/String;)V

    .line 431
    :cond_1
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;)V

    .line 432
    invoke-static {}, Lcom/baidu/mobstat/LoadCache;->instance()Lcom/baidu/mobstat/LoadCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/mobstat/LoadCache;->checkStartLoadCache(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static trackWebView(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .locals 2

    .prologue
    .line 1088
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/baidu/mobstat/StatService;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    .line 1089
    return-void
.end method
