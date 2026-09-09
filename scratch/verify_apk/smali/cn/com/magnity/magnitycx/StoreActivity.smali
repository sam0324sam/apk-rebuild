.class public Lcn/com/magnity/magnitycx/StoreActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StoreActivity.java"


# instance fields
.field mLayout:Landroid/view/ViewGroup;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/com/magnity/magnitycx/StoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v3, 0x7f040022

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/StoreActivity;->setContentView(I)V

    .line 34
    const v3, 0x7f0e008c

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/StoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mLayout:Landroid/view/ViewGroup;

    .line 36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/StoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    .line 39
    iget-object v3, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 40
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 41
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 42
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 43
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 45
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 46
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 47
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 48
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 49
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 50
    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcn/com/magnity/magnitycx/StoreActivity$1;

    invoke-direct {v4, p0}, Lcn/com/magnity/magnitycx/StoreActivity$1;-><init>(Lcn/com/magnity/magnitycx/StoreActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    iget-object v3, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v3, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 70
    iget-object v3, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    const-string v4, "uri"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/StoreActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 137
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 138
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 116
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 118
    iput-object v1, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    .line 121
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 122
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 126
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 128
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/StoreActivity;->finish()V

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0120
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 101
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/StoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5fae\u5546"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 107
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/StoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5fae\u5546"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 84
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 78
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 89
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 96
    return-void
.end method
