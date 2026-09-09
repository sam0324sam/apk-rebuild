.class final Lcn/com/magnity/magnitymx/scanner/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lcn/com/magnity/magnitymx/scanner/ViewfinderView;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/scanner/ViewfinderView;)V
    .locals 0
    .param p1, "viewfinderView"    # Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderResultPointCallback;->viewfinderView:Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

    .line 12
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ViewfinderResultPointCallback;->viewfinderView:Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

    invoke-virtual {v0, p1}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 17
    return-void
.end method
