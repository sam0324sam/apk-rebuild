.class Lcn/com/magnity/magnitymx/camera/CameraView$1;
.super Lcn/com/magnity/magnitymx/camera/DisplayOrientationDetector;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/camera/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/camera/CameraView;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/camera/CameraView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/camera/CameraView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/CameraView$1;->this$0:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-direct {p0, p2}, Lcn/com/magnity/magnitymx/camera/DisplayOrientationDetector;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDisplayOrientationChanged(I)V
    .locals 1
    .param p1, "displayOrientation"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/CameraView$1;->this$0:Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/camera/CameraView;->access$000(Lcn/com/magnity/magnitymx/camera/CameraView;)Lcn/com/magnity/magnitymx/camera/Camera2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/camera/Camera2;->setDisplayOrientation(I)V

    .line 65
    return-void
.end method
