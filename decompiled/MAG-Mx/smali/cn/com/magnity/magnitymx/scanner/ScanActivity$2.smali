.class Lcn/com/magnity/magnitymx/scanner/ScanActivity$2;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 80
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$2;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$2;->this$0:Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->access$100(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)Lcn/com/magnity/magnitymx/scanner/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->takePicture()V

    .line 84
    return-void
.end method
