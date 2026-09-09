.class Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;
.super Ljava/lang/Object;
.source "VisibleCameraHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;->this$0:Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$1;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;-><init>(Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 2
    .param p1, "lhs"    # Landroid/hardware/Camera$Size;
    .param p2, "rhs"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 295
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    .line 298
    :cond_0
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v1, :cond_1

    .line 299
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 292
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcn/com/magnity/magnitycx/sdk/VisibleCameraHelper$CameraSizeComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
