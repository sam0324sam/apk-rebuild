.class public Lcn/com/magnity/magnitymx/scanner/ScanActivity;
.super Landroid/app/Activity;
.source "ScanActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static mLastScanResult:Ljava/lang/String;


# instance fields
.field private mAsyncDecode:Lcn/com/magnity/magnitymx/scanner/AsyncDecode;

.field private mBeepManager:Lcn/com/magnity/magnitymx/scanner/BeepManager;

.field private mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

.field private mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

.field private mFinderView:Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 246
    new-instance v0, Lcn/com/magnity/magnitymx/scanner/ScanActivity$4;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity$4;-><init>(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)Lcn/com/magnity/magnitymx/scanner/ViewfinderView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mFinderView:Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)Lcn/com/magnity/magnitymx/scanner/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mIsDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)Lcn/com/magnity/magnitymx/scanner/AsyncDecode;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/scanner/ScanActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mAsyncDecode:Lcn/com/magnity/magnitymx/scanner/AsyncDecode;

    return-object v0
.end method


# virtual methods
.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 2
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;
    .param p3, "scaleFactor"    # F

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 160
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    .line 161
    .local v0, "result":Lcom/google/zxing/Result;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mBeepManager:Lcn/com/magnity/magnitymx/scanner/BeepManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/scanner/BeepManager;->playBeepSoundAndVibrate()V

    .line 162
    new-instance v1, Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;

    invoke-direct {v1, p0, v0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity$3;-><init>(Lcn/com/magnity/magnitymx/scanner/ScanActivity;Lcom/google/zxing/Result;)V

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 177
    .end local v0    # "result":Lcom/google/zxing/Result;
    :pswitch_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mIsDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x7f080049
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f0a0025

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->setContentView(I)V

    .line 55
    const v1, 0x7f0800c3

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mImageView:Landroid/widget/ImageView;

    .line 56
    new-instance v2, Lcn/com/magnity/magnitymx/scanner/CameraManager;

    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/camera/CameraView;

    invoke-direct {v2, v1}, Lcn/com/magnity/magnitymx/scanner/CameraManager;-><init>(Lcn/com/magnity/magnitymx/camera/CameraView;)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    .line 57
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCallback:Lcn/com/magnity/magnitymx/camera/CameraView$Callback;

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->init(Lcn/com/magnity/magnitymx/camera/CameraView$Callback;)V

    .line 58
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleFlashMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->setFlashMode(I)V

    .line 59
    const v1, 0x7f080072

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mFinderView:Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

    .line 60
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mFinderView:Lcn/com/magnity/magnitymx/scanner/ViewfinderView;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/scanner/ViewfinderView;->setCameraManager(Lcn/com/magnity/magnitymx/scanner/CameraManager;)V

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mUiHandler:Landroid/os/Handler;

    .line 62
    new-instance v1, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;

    new-instance v2, Lcn/com/magnity/magnitymx/scanner/ScanActivity$1;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity$1;-><init>(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)V

    invoke-direct {v1, v2}, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;-><init>(Lcom/google/zxing/ResultPointCallback;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mAsyncDecode:Lcn/com/magnity/magnitymx/scanner/AsyncDecode;

    .line 68
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mAsyncDecode:Lcn/com/magnity/magnitymx/scanner/AsyncDecode;

    iget-object v2, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->start(Landroid/os/Handler;Lcn/com/magnity/magnitymx/scanner/CameraManager;)V

    .line 69
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mIsDecoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v1, Lcn/com/magnity/magnitymx/scanner/BeepManager;

    invoke-direct {v1, p0}, Lcn/com/magnity/magnitymx/scanner/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mBeepManager:Lcn/com/magnity/magnitymx/scanner/BeepManager;

    .line 72
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    const v1, 0x7f0e0035

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 77
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 80
    :cond_0
    const v1, 0x7f080184

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcn/com/magnity/magnitymx/scanner/ScanActivity$2;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity$2;-><init>(Lcn/com/magnity/magnitymx/scanner/ScanActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const/4 v1, 0x0

    sput-object v1, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mLastScanResult:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mAsyncDecode:Lcn/com/magnity/magnitymx/scanner/AsyncDecode;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/scanner/AsyncDecode;->stop()V

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 141
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 119
    :sswitch_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->finish()V

    goto :goto_0

    .line 122
    :sswitch_1
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v0

    .line 124
    .local v0, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleFlashMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 127
    const/4 v1, 0x3

    .line 136
    .local v1, "mode":I
    :goto_1
    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setVisibleFlashMode(I)V

    .line 137
    iget-object v2, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-virtual {v2, v1}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->setFlashMode(I)V

    .line 138
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->invalidatePanelMenu(I)V

    goto :goto_0

    .line 130
    .end local v1    # "mode":I
    :pswitch_0
    const/4 v1, 0x2

    .line 131
    .restart local v1    # "mode":I
    goto :goto_1

    .line 133
    .end local v1    # "mode":I
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1    # "mode":I
    goto :goto_1

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08000d -> :sswitch_1
    .end sparse-switch

    .line 124
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mBeepManager:Lcn/com/magnity/magnitymx/scanner/BeepManager;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/scanner/BeepManager;->close()V

    .line 236
    iget-object v0, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->stop()V

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 238
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 93
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getVisibleFlashMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 96
    const v0, 0x7f070076

    .line 105
    .local v0, "id":I
    :goto_0
    const v1, 0x7f08000d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 99
    .end local v0    # "id":I
    :pswitch_0
    const v0, 0x7f070075

    .line 100
    .restart local v0    # "id":I
    goto :goto_0

    .line 102
    .end local v0    # "id":I
    :pswitch_1
    const v0, 0x7f070077

    .restart local v0    # "id":I
    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
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
    .line 228
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_0

    .line 231
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x127

    invoke-static {p0, v1, v2}, Lcn/com/magnity/magnitymx/util/ActivityUtils;->requestRuntimePermission(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    .line 220
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mCameraManager:Lcn/com/magnity/magnitymx/scanner/CameraManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/scanner/CameraManager;->start()V

    .line 223
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/scanner/ScanActivity;->mBeepManager:Lcn/com/magnity/magnitymx/scanner/BeepManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/scanner/BeepManager;->updatePrefs()V

    .line 224
    return-void
.end method
