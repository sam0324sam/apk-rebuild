.class public Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/webkit/WebChromeClient;

.field private c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

.field private d:Lcom/baidu/mobstat/autotrace/WebViewInterface;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebChromeClient;Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;Lcom/baidu/mobstat/autotrace/WebViewInterface;)V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    .line 378
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->a:Ljava/lang/ref/WeakReference;

    .line 379
    iput-object p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    .line 380
    iput-object p3, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    .line 381
    iput-object p4, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/autotrace/WebViewInterface;

    .line 382
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 427
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    .line 409
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    if-eqz v0, :cond_1

    .line 388
    iget v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/autotrace/WebViewInterface;

    invoke-interface {v0, p1, v1, v2}, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/autotrace/WebViewInterface;)V

    .line 392
    :cond_0
    iput p2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->e:I

    .line 393
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->c:Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->d:Lcom/baidu/mobstat/autotrace/WebViewInterface;

    invoke-interface {v0, p1, v1, v2}, Lcom/baidu/mobstat/BaiduStatJSInterface$IWebviewPageLoadCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;Lcom/baidu/mobstat/autotrace/WebViewInterface;)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/baidu/mobstat/BaiduStatJSInterface$CustomWebChromeViewClient;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 401
    :cond_2
    return-void
.end method
