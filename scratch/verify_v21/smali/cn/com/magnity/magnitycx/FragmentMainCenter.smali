.class public Lcn/com/magnity/magnitycx/FragmentMainCenter;
.super Landroid/support/v4/app/Fragment;
.source "FragmentMainCenter.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/sdk/DelegateDeviceConnected;
.implements Lcn/com/magnity/magnitycx/FragmentMainTop$DelegateDisplayModeChanged;
.implements Lcn/com/magnity/magnitycx/sdk/UsbCommunication$IProgressCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;
    }
.end annotation


# static fields
.field public static imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;


# instance fields
.field private bmpCaptured_:Landroid/graphics/Bitmap;

.field private imgViewAnim_:Landroid/widget/ImageView;

.field private imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

.field private layout_:Landroid/widget/LinearLayout;

.field private progBarLoading_:Lcom/github/lzyzsd/circleprogress/DonutProgress;

.field private recordingFileName_:Ljava/lang/String;

.field private tvTipInfo_:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->recordingFileName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitycx/FragmentMainCenter;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainCenter;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public capturePhoto()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    const-string v4, ""

    .line 295
    .local v4, "pathName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 297
    .local v5, "ret":Z
    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 298
    const-string v8, "Media not mounted"

    invoke-static {v8}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 384
    :goto_0
    return v7

    .line 302
    :cond_0
    const-string v6, ""

    .line 303
    .local v6, "type":Ljava/lang/String;
    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v9, v9, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    packed-switch v9, :pswitch_data_0

    .line 323
    :goto_1
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v10, v10, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMddHHmmssSSS"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 324
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    instance-of v9, v9, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v9}, Lcn/com/magnity/magnitycx/ImageViewer;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 327
    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-interface {v9}, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;->onCapture()Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->bmpCaptured_:Landroid/graphics/Bitmap;

    .line 328
    sget-object v9, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v9, v9, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v9, v9, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 329
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Lock()V

    .line 330
    const-string v9, ".jpg"

    const-string v10, ".ddt"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->saveDDT(Ljava/lang/String;)Z

    .line 331
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->Unlock()V

    .line 339
    :cond_1
    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->bmpCaptured_:Landroid/graphics/Bitmap;

    if-nez v9, :cond_2

    .line 340
    const-string v8, "Capture photo fail because of ir bmp is null"

    invoke-static {v8}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 306
    goto :goto_1

    .line 308
    :pswitch_2
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 309
    goto/16 :goto_1

    .line 311
    :pswitch_3
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08001a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 312
    goto/16 :goto_1

    .line 314
    :pswitch_4
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08001b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 315
    goto/16 :goto_1

    .line 317
    :pswitch_5
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08001c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 318
    goto/16 :goto_1

    .line 320
    :pswitch_6
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 345
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 346
    .local v3, "out":Ljava/io/FileOutputStream;
    iget-object v9, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->bmpCaptured_:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 347
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 349
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->notifyMediaSync(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v7}, Lcn/com/magnity/magnitycx/MainActivity;->getFragmentMainBottom()Lcn/com/magnity/magnitycx/FragmentMainBottom;

    move-result-object v2

    .line 356
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v7, v2, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;

    if-eqz v7, :cond_3

    .line 357
    check-cast v2, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;

    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v2, v4}, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;->onCaptureFinished(Ljava/lang/String;)V

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v9, 0x7f050013

    invoke-static {v7, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 364
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 365
    new-instance v7, Lcn/com/magnity/magnitycx/FragmentMainCenter$1;

    invoke-direct {v7, p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter$1;-><init>(Lcn/com/magnity/magnitycx/FragmentMainCenter;)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 382
    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move v7, v8

    .line 384
    goto/16 :goto_0

    .line 350
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Capture photo fail ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getImageViewer()Lcn/com/magnity/magnitycx/ImageViewer;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    const v1, 0x7f04003a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "rootViewer":Landroid/view/View;
    const v1, 0x7f0e00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    .line 68
    const v1, 0x7f0e00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/ImageViewer;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    .line 69
    const v1, 0x7f0e00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/lzyzsd/circleprogress/DonutProgress;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->progBarLoading_:Lcom/github/lzyzsd/circleprogress/DonutProgress;

    .line 70
    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->tvTipInfo_:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0e00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/ImageViewerVisible;

    sput-object v1, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    .line 72
    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->layout_:Landroid/widget/LinearLayout;

    .line 74
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->onDeviceDisconnected()V

    .line 76
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 87
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 82
    return-void
.end method

.method public onDeviceConnected(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V
    .locals 5
    .param p1, "comm"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 91
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitycx/ImageViewer;->setVisibility(I)V

    .line 94
    :cond_0
    sget-object v1, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    if-eqz v1, :cond_1

    .line 95
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->isCameraPermission()Z

    move-result v0

    .line 96
    .local v0, "hasPermission":Z
    sget-object v1, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v1, v1, Lcn/com/magnity/magnitycx/sdk/MagParameter;->dispMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 97
    sget-object v1, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    invoke-virtual {v1, v4}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setVisibility(I)V

    .line 102
    .end local v0    # "hasPermission":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->layout_:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->layout_:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaWidth:I

    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v3, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v3, v3, Lcn/com/magnity/magnitycx/sdk/BasePara1;->fpaHeight:I

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitycx/ImageViewer;->initData(II)V

    .line 109
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {p1, v1}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->setImageViewer(Lcn/com/magnity/magnitycx/ImageViewer;)V

    .line 111
    :cond_3
    return-void

    .line 98
    .restart local v0    # "hasPermission":Z
    :cond_4
    if-eqz v0, :cond_1

    .line 99
    sget-object v1, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    invoke-virtual {v1, v4}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDeviceDisconnected()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 143
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->layout_:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->layout_:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 149
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 150
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitycx/ImageViewer;->setVisibility(I)V

    .line 155
    :cond_2
    sget-object v1, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    if-eqz v1, :cond_3

    .line 156
    sget-object v1, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setVisibility(I)V

    .line 158
    :cond_3
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->progBarLoading_:Lcom/github/lzyzsd/circleprogress/DonutProgress;

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->progBarLoading_:Lcom/github/lzyzsd/circleprogress/DonutProgress;

    invoke-virtual {v1, v4}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setVisibility(I)V

    .line 161
    :cond_4
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->tvTipInfo_:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 162
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->tvTipInfo_:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_5
    return-void
.end method

.method public onDisplayModeChanged(II)Z
    .locals 4
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/VisibleCamera;->isCameraPermission()Z

    move-result v0

    .line 225
    .local v0, "hasPermission":Z
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 226
    sget-object v2, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    invoke-virtual {v2, v1}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setVisibility(I)V

    .line 234
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 228
    :cond_1
    sget-object v2, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewerVisible_:Lcn/com/magnity/magnitycx/ImageViewerVisible;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcn/com/magnity/magnitycx/ImageViewerVisible;->setVisibility(I)V

    .line 229
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 130
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u4e3b\u9875\u9762\u4e2d"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u4e3b\u9875\u9762\u4e2d"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/StatService;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public progressCancel(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08007a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    return-void

    .line 172
    :pswitch_0
    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->stopLoading(Z)V

    .line 173
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->notifyObervers(I)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public progressChanged(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "progress"    # I

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->progBarLoading_:Lcom/github/lzyzsd/circleprogress/DonutProgress;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setProgress(F)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public progressFinished(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 182
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 184
    :pswitch_0
    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->stopLoading(Z)V

    .line 185
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->getInstance()Lcn/com/magnity/magnitycx/sdk/UsbConnection;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitycx/sdk/UsbConnection;->notifyObervers(I)V

    .line 186
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->stopLoading(Z)V

    .line 190
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public progressStart(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->startLoading()V

    .line 212
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->tvTipInfo_:Landroid/widget/TextView;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->startLoading()V

    .line 216
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->tvTipInfo_:Landroid/widget/TextView;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->layout_:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->progBarLoading_:Lcom/github/lzyzsd/circleprogress/DonutProgress;

    invoke-virtual {v0, v2}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->progBarLoading_:Lcom/github/lzyzsd/circleprogress/DonutProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setProgress(F)V

    .line 117
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->tvTipInfo_:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->tvTipInfo_:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public startRecording()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 243
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 244
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewAnim_:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    instance-of v2, v2, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-virtual {v2}, Lcn/com/magnity/magnitycx/ImageViewer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 247
    const-string v0, ""

    .line 248
    .local v0, "type":Ljava/lang/String;
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    packed-switch v2, :pswitch_data_0

    .line 269
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v3, v3, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmssSSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 270
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->recordingFileName_:Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->recordingFileName_:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;->onStartRecording(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    const-string v2, "Fail to start recording"

    invoke-static {v2}, Lcn/com/magnity/magnitycx/log/Logging;->warn(Ljava/lang/Object;)V

    .line 279
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 250
    .restart local v0    # "type":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    goto :goto_0

    .line 253
    :pswitch_2
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    goto :goto_0

    .line 256
    :pswitch_3
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    goto :goto_0

    .line 259
    :pswitch_4
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    goto :goto_0

    .line 262
    :pswitch_5
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    goto/16 :goto_0

    .line 265
    :pswitch_6
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stopLoading(Z)V
    .locals 2
    .param p1, "succ"    # Z

    .prologue
    const/16 v1, 0x8

    .line 134
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->progBarLoading_:Lcom/github/lzyzsd/circleprogress/DonutProgress;

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->tvTipInfo_:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    if-nez p1, :cond_0

    .line 137
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->layout_:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 283
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->imgViewer_:Lcn/com/magnity/magnitycx/ImageViewer;

    invoke-interface {v1}, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;->onStopRecording()V

    .line 285
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/MainActivity;->getFragmentMainBottom()Lcn/com/magnity/magnitycx/FragmentMainBottom;

    move-result-object v0

    .line 286
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;

    if-eqz v1, :cond_0

    .line 287
    check-cast v0, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->recordingFileName_:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;->onCaptureFinished(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->recordingFileName_:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->notifyMediaSync(Landroid/content/Context;Ljava/io/File;)V

    .line 290
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainCenter;->recordingFileName_:Ljava/lang/String;

    .line 291
    return-void
.end method
