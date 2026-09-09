.class Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/scanner/ScanActivity;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

.field final synthetic val$result:Lcom/google/zxing/Result;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/scanner/ScanActivity;Lcom/google/zxing/Result;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;->val$result:Lcom/google/zxing/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;->val$result:Lcom/google/zxing/Result;

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;->val$result:Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mLastScanResult:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;->val$result:Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/PopDialog;->newInstance(Ljava/lang/String;)Lcn/com/magnity/magnitymx/dialog/PopDialog;

    move-result-object v0

    .line 170
    .local v0, "popDialog":Lcn/com/magnity/magnitymx/dialog/PopDialog;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/PopDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
