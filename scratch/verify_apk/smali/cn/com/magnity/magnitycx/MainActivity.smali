.class public Lcn/com/magnity/magnitycx/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/QueryDialogFragment$DelegateQueryResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;,
        Lcn/com/magnity/magnitycx/MainActivity$DelegateFling;
    }
.end annotation


# instance fields
.field private fragmentBottom_:Lcn/com/magnity/magnitycx/FragmentMainBottom;

.field private fragmentCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

.field private fragmentTop_:Lcn/com/magnity/magnitycx/FragmentMainTop;

.field private gestureDetector_:Landroid/support/v4/view/GestureDetectorCompat;

.field private mIsLoggingInitSucc:Z

.field orientationListener_:Landroid/view/OrientationEventListener;

.field private upgradeManager_:Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/MainActivity;)Lcn/com/magnity/magnitycx/FragmentMainBottom;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/MainActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentBottom_:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    return-object v0
.end method

.method private disableRotationAnimation()V
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 229
    .local v1, "localWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 230
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 231
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 232
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MainActivity;->gestureDetector_:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceRoi:Z

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MainActivity;->gestureDetector_:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 252
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getFragmentMainBottom()Lcn/com/magnity/magnitycx/FragmentMainBottom;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentBottom_:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    return-object v0
.end method

.method public getFragmentMainCenter()Lcn/com/magnity/magnitycx/FragmentMainCenter;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    return-object v0
.end method

.method public getFragmentMainTop()Lcn/com/magnity/magnitycx/FragmentMainTop;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentTop_:Lcn/com/magnity/magnitycx/FragmentMainTop;

    return-object v0
.end method

.method public getRect(I)Landroid/graphics/RectF;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 269
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 270
    .local v1, "rt":Landroid/graphics/RectF;
    const/4 v0, 0x0

    .line 271
    .local v0, "layout":Landroid/widget/LinearLayout;
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 284
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 285
    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 286
    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 288
    return-object v1

    .line 273
    :pswitch_0
    const v2, 0x7f0e0082

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitycx/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 274
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    goto :goto_0

    .line 276
    :pswitch_1
    const v2, 0x7f0e0083

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitycx/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 277
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    goto :goto_0

    .line 279
    :pswitch_2
    const v2, 0x7f0e0084

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitycx/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 179
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    .line 180
    .local v0, "usbConn":Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    if-eqz v0, :cond_0

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->setCallbackReceiver(Lcn/com/magnity/magnitycx/FragmentMainCenter;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->deinit(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0e0083

    const v9, 0x7f0e0082

    const/4 v8, 0x2

    const/16 v7, 0x1001

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v3, v4

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v3, v8

    invoke-static {p0, v3, v6}, Lcn/com/magnity/magnitycx/util/ActivityUtils;->requestRuntimePermission(Landroid/app/Activity;[Ljava/lang/String;I)Z

    .line 62
    sget-object v3, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->init(Lorg/apache/log4j/Level;)Z

    move-result v3

    iput-boolean v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->mIsLoggingInitSucc:Z

    .line 64
    const-string v3, "App start"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->info(Ljava/lang/Object;)V

    .line 66
    const-string v3, "Main activity created"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 68
    const v3, 0x7f04001e

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitycx/MainActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/MainActivity;->disableRotationAnimation()V

    .line 70
    invoke-virtual {p0, v6, v6}, Lcn/com/magnity/magnitycx/MainActivity;->overridePendingTransition(II)V

    .line 72
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 73
    invoke-static {v6}, Lcom/baidu/mobstat/StatService;->setDebugOn(Z)V

    .line 76
    new-instance v3, Lcn/com/magnity/magnitycx/MainActivity$1;

    invoke-direct {v3, p0, p0, v8}, Lcn/com/magnity/magnitycx/MainActivity$1;-><init>(Lcn/com/magnity/magnitycx/MainActivity;Landroid/content/Context;I)V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->orientationListener_:Landroid/view/OrientationEventListener;

    .line 101
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->orientationListener_:Landroid/view/OrientationEventListener;

    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->orientationListener_:Landroid/view/OrientationEventListener;

    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->enable()V

    .line 119
    :goto_0
    new-instance v3, Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v4, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcn/com/magnity/magnitycx/MainActivity$MyGestureListener;-><init>(Lcn/com/magnity/magnitycx/MainActivity;Lcn/com/magnity/magnitycx/MainActivity$1;)V

    invoke-direct {v3, p0, v4}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->gestureDetector_:Landroid/support/v4/view/GestureDetectorCompat;

    .line 122
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 124
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitycx/FragmentMainTop;

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentTop_:Lcn/com/magnity/magnitycx/FragmentMainTop;

    .line 125
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentTop_:Lcn/com/magnity/magnitycx/FragmentMainTop;

    if-nez v3, :cond_0

    .line 126
    new-instance v3, Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-direct {v3}, Lcn/com/magnity/magnitycx/FragmentMainTop;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentTop_:Lcn/com/magnity/magnitycx/FragmentMainTop;

    .line 127
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentTop_:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v3, v9, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 129
    :cond_0
    invoke-virtual {v1, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitycx/FragmentMainCenter;

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    .line 130
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    if-nez v3, :cond_1

    .line 131
    new-instance v3, Lcn/com/magnity/magnitycx/FragmentMainCenter;

    invoke-direct {v3}, Lcn/com/magnity/magnitycx/FragmentMainCenter;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    .line 132
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    invoke-virtual {v3, v10, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 134
    :cond_1
    const v3, 0x7f0e0084

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcn/com/magnity/magnitycx/FragmentMainBottom;

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentBottom_:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    .line 135
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentBottom_:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    if-nez v3, :cond_2

    .line 136
    new-instance v3, Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-direct {v3}, Lcn/com/magnity/magnitycx/FragmentMainBottom;-><init>()V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentBottom_:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    .line 137
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0e0084

    iget-object v5, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentBottom_:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 140
    :cond_2
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v2

    .line 141
    .local v2, "usbConn":Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentTop_:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->registerObserver(Ljava/lang/Object;)V

    .line 142
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->registerObserver(Ljava/lang/Object;)V

    .line 143
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentBottom_:Lcn/com/magnity/magnitycx/FragmentMainBottom;

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->registerObserver(Ljava/lang/Object;)V

    .line 145
    if-nez p1, :cond_3

    .line 146
    new-instance v3, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->upgradeManager_:Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;

    .line 147
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->upgradeManager_:Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;

    invoke-virtual {v3}, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->start()Z

    .line 149
    :cond_3
    return-void

    .line 104
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "usbConn":Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    :cond_4
    iget-object v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->orientationListener_:Landroid/view/OrientationEventListener;

    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->disable()V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "degree":I
    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 114
    :goto_1
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 115
    invoke-static {v0}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->setPreviewOrientation(I)V

    .line 116
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    goto/16 :goto_0

    .line 108
    :pswitch_0
    const/16 v0, 0x5a

    goto :goto_1

    .line 109
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    .line 110
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_1

    .line 111
    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 188
    const-string v1, "Main activity destroyed"

    invoke-static {v1}, Lcn/com/magnity/magnitycx/log/Logging;->trace(Ljava/lang/Object;)V

    .line 189
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 190
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MainActivity;->orientationListener_:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 192
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    .line 193
    .local v0, "usbConn":Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->unregisterAll()V

    .line 195
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MainActivity;->upgradeManager_:Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MainActivity;->upgradeManager_:Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/upgrade/UpgradeManager;->stop()V

    .line 198
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 244
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\ufffd\ufffd\u04b3\ufffd\ufffd"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 51
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onQueryResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 236
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentTop_:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->openLaser()V

    .line 239
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 205
    aget-object v1, p2, v0

    .line 206
    .local v1, "permission":Ljava/lang/String;
    aget v2, p3, v0

    .line 208
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 204
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 214
    :pswitch_0
    iget-boolean v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->mIsLoggingInitSucc:Z

    if-nez v3, :cond_0

    .line 215
    sget-object v3, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->init(Lorg/apache/log4j/Level;)Z

    move-result v3

    iput-boolean v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->mIsLoggingInitSucc:Z

    .line 216
    iget-boolean v3, p0, Lcn/com/magnity/magnitycx/MainActivity;->mIsLoggingInitSucc:Z

    if-eqz v3, :cond_0

    .line 217
    const-string v3, "App start"

    invoke-static {v3}, Lcn/com/magnity/magnitycx/log/Logging;->info(Ljava/lang/Object;)V

    goto :goto_1

    .line 212
    :pswitch_1
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 223
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 224
    return-void

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x516a29a7
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 174
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 155
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    .line 156
    .local v0, "usbConn":Lcn/com/magnity/magnitycx/sdk/UsbConnection;
    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcn/com/magnity/magnitycx/MainActivity;->fragmentCenter_:Lcn/com/magnity/magnitycx/FragmentMainCenter;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->setCallbackReceiver(Lcn/com/magnity/magnitycx/FragmentMainCenter;)V

    .line 158
    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->init()Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->notifyObervers(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 169
    return-void
.end method
