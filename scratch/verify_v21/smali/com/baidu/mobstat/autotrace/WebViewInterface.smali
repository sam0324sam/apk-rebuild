.class public Lcom/baidu/mobstat/autotrace/WebViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 81
    .line 86
    if-eqz p2, :cond_0

    .line 87
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/autotrace/a;->a(Landroid/content/Context;F)I

    move-result v4

    .line 88
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/autotrace/a;->a(Landroid/content/Context;F)I

    move-result v3

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/autotrace/a;->a(Landroid/content/Context;F)I

    move-result v1

    .line 90
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/autotrace/a;->a(Landroid/content/Context;F)I

    move-result v0

    move v2, v1

    .line 93
    :goto_0
    invoke-static {p0}, Lcom/baidu/mobstat/autotrace/b;->c(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/baidu/mobstat/autotrace/a;->a(Landroid/content/Context;F)I

    move-result v1

    .line 94
    invoke-static {p0}, Lcom/baidu/mobstat/autotrace/b;->d(Landroid/app/Activity;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p0, v5}, Lcom/baidu/mobstat/autotrace/a;->a(Landroid/content/Context;F)I

    move-result v5

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"x\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", \"y\": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"w\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \"h\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \"sw\": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \"sh\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window._automtj.getViewportTree(\'android\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'window.WebViewInterface.setViewportTreeToNative\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/baidu/mobstat/autotrace/d;

    invoke-direct {v1, p1, v0}, Lcom/baidu/mobstat/autotrace/d;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 14

    .prologue
    .line 186
    const/4 v2, 0x1

    .line 188
    const/4 v1, 0x0

    .line 189
    const/4 v0, 0x0

    .line 190
    const/4 v4, 0x0

    .line 192
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v5, "h3"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 195
    const-string v5, "p2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v5, "l"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v11, v0

    move-object v9, v1

    .line 202
    :goto_0
    if-nez v2, :cond_0

    .line 216
    :goto_1
    return-void

    .line 197
    :catch_0
    move-exception v2

    .line 198
    const/4 v2, 0x0

    move-object v11, v0

    move-object v9, v1

    goto :goto_0

    .line 206
    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/baidu/mobstat/autotrace/b;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v8

    .line 207
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/autotrace/b;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    .line 208
    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/autotrace/b;->f(Landroid/view/View;)Ljava/util/Map;

    move-result-object v13

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 212
    const-string v3, ""

    .line 214
    invoke-static {}, Lcom/baidu/mobstat/EventAnalysis;->getInstance()Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 215
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 214
    invoke-virtual/range {v1 .. v13}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public static getEditViewTree(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 57
    const-string v0, ""

    sput-object v0, Lcom/baidu/mobstat/autotrace/WebViewInterface;->a:Ljava/lang/String;

    .line 58
    const-string v0, ""

    .line 60
    invoke-static {p0, p1, p2}, Lcom/baidu/mobstat/autotrace/WebViewInterface;->a(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0xf

    if-ge v1, v3, :cond_0

    .line 66
    const-wide/16 v4, 0x14

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    sget-object v1, Lcom/baidu/mobstat/autotrace/WebViewInterface;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    sget-object v0, Lcom/baidu/mobstat/autotrace/WebViewInterface;->a:Ljava/lang/String;

    .line 77
    :cond_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public injectTrackJs(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 124
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/autotrace/WebViewInterface;->c:Ljava/lang/ref/WeakReference;

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/autotrace/WebViewInterface;->b:Ljava/lang/ref/WeakReference;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function(){var h5conf = {\"sdkAPI\": \"window.WebViewInterface.setEventToNative\", \"sdkType\": \"android\", \"events\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public injectVizJs(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEventToNative(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/WebViewInterface;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/autotrace/WebViewInterface;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 170
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/baidu/mobstat/autotrace/WebViewInterface;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/baidu/mobstat/autotrace/WebViewInterface;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 178
    if-eqz v1, :cond_0

    .line 182
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/autotrace/WebViewInterface;->a(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public setViewportTreeToNative(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 52
    sput-object p1, Lcom/baidu/mobstat/autotrace/WebViewInterface;->a:Ljava/lang/String;

    .line 53
    return-void
.end method
