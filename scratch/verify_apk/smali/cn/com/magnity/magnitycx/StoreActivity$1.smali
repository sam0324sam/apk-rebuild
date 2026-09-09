.class Lcn/com/magnity/magnitycx/StoreActivity$1;
.super Landroid/webkit/WebViewClient;
.source "StoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/StoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/StoreActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/StoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/StoreActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/com/magnity/magnitycx/StoreActivity$1;->this$0:Lcn/com/magnity/magnitycx/StoreActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/com/magnity/magnitycx/StoreActivity$1;->this$0:Lcn/com/magnity/magnitycx/StoreActivity;

    iget-object v1, p0, Lcn/com/magnity/magnitycx/StoreActivity$1;->this$0:Lcn/com/magnity/magnitycx/StoreActivity;

    iget-object v1, v1, Lcn/com/magnity/magnitycx/StoreActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/StoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    return v0
.end method
