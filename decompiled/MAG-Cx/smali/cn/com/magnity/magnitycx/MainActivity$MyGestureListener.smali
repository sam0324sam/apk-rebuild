.class Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/MainActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/MainActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/MainActivity;Lcn/com/magnity/magnitycx/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/MainActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/MainActivity$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;-><init>(Lcn/com/magnity/magnitycx/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 295
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->triggerFFC()V

    .line 296
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 297
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 302
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 303
    .local v2, "outMetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 304
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 305
    .local v4, "resw":I
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 306
    .local v3, "resh":I
    if-ge v4, v3, :cond_1

    .end local v4    # "resw":I
    :goto_0
    div-int/lit8 v0, v4, 0x4

    .line 308
    .local v0, "cmp":I
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v5}, Lcn/com/magnity/magnitycx/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_3

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 310
    .local v1, "dist":F
    int-to-float v5, v0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    .line 311
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/MainActivity;->access$100(Lcn/com/magnity/magnitycx/MainActivity;)Lcn/com/magnity/magnitycx/FragmentMainBottom;

    move-result-object v5

    invoke-interface {v5, v8}, Lcn/com/magnity/magnitycx/MainActivity$DelegateFling;->afterFling(I)V

    .line 324
    :cond_0
    :goto_1
    return v7

    .end local v0    # "cmp":I
    .end local v1    # "dist":F
    .restart local v4    # "resw":I
    :cond_1
    move v4, v3

    .line 306
    goto :goto_0

    .line 312
    .end local v4    # "resw":I
    .restart local v0    # "cmp":I
    .restart local v1    # "dist":F
    :cond_2
    neg-int v5, v0

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    .line 313
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/MainActivity;->access$100(Lcn/com/magnity/magnitycx/MainActivity;)Lcn/com/magnity/magnitycx/FragmentMainBottom;

    move-result-object v5

    invoke-interface {v5, v7}, Lcn/com/magnity/magnitycx/MainActivity$DelegateFling;->afterFling(I)V

    goto :goto_1

    .line 316
    .end local v1    # "dist":F
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v1, v5, v6

    .line 317
    .restart local v1    # "dist":F
    int-to-float v5, v0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_4

    .line 318
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/MainActivity;->access$100(Lcn/com/magnity/magnitycx/MainActivity;)Lcn/com/magnity/magnitycx/FragmentMainBottom;

    move-result-object v5

    invoke-interface {v5, v7}, Lcn/com/magnity/magnitycx/MainActivity$DelegateFling;->afterFling(I)V

    goto :goto_1

    .line 319
    :cond_4
    int-to-float v5, v0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    .line 320
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-static {v5}, Lcn/com/magnity/magnitycx/MainActivity;->access$100(Lcn/com/magnity/magnitycx/MainActivity;)Lcn/com/magnity/magnitycx/FragmentMainBottom;

    move-result-object v5

    invoke-interface {v5, v8}, Lcn/com/magnity/magnitycx/MainActivity$DelegateFling;->afterFling(I)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;->this$0:Lcn/com/magnity/magnitycx/MainActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->showCalibrationDialog(Landroid/app/Activity;)V

    return-void
.end method
