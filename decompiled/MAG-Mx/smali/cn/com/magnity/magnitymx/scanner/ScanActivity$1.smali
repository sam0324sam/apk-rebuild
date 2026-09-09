.class Lcn/com/magnity/magnitymx/scanner/ScanActivity$1;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/scanner/ScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$1;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$1;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->access$000(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 66
    return-void
.end method
