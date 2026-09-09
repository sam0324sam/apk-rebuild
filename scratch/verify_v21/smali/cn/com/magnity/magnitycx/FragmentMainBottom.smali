.class public Lcn/com/magnity/magnitycx/FragmentMainBottom;
.super Landroid/support/v4/app/Fragment;
.source "FragmentMainBottom.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/MainActivity$DelegateFling;
.implements Lcn/com/magnity/magnitycx/sdk/DelegateDeviceConnected;
.implements Lcn/com/magnity/magnitycx/FragmentMainCenter$DelegateCapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;
    }
.end annotation


# static fields
.field static final PHOTO_MARGIN_MARGIN:I


# instance fields
.field private btnCapture_:Landroid/widget/ImageButton;

.field private btnPalette_:Landroid/widget/ImageButton;

.field private handler_:Landroid/os/Handler;

.field private layoutSelection_:Landroid/widget/RelativeLayout;

.field private magClickListener_:Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;

.field private modeSelection_:I

.field private screenHeight_:I

.field private screenWidth_:I

.field private timerHelper_:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

.field private tvPhoto_:Landroid/widget/TextView;

.field private tvRecord_:Landroid/widget/TextView;

.field private viewBrowse_:Landroid/widget/ImageButton;

.field private viewRecordingPoint_:Landroid/view/View;

.field private viewSelectPointer_:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainBottom;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewRecordingPoint_:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainBottom;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/FragmentMainBottom;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainBottom;

    .prologue
    .line 36
    iget v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    return v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitycx/FragmentMainBottom;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainBottom;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->updateButtonsWhenRecordingStatusChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitycx/FragmentMainBottom;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainBottom;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->blinkWhenRecordingStatusChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitycx/FragmentMainBottom;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainBottom;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private blinkWhenRecordingStatusChanged(Z)V
    .locals 6
    .param p1, "blink"    # Z

    .prologue
    .line 362
    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewRecordingPoint_:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentMainBottom$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom$1;-><init>(Lcn/com/magnity/magnitycx/FragmentMainBottom;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->handler_:Landroid/os/Handler;

    .line 380
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentMainBottom$2;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom$2;-><init>(Lcn/com/magnity/magnitycx/FragmentMainBottom;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->timerHelper_:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    .line 386
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->timerHelper_:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->start(JJ)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->timerHelper_:Lcn/com/magnity/magnitycx/sdk/TimerHelper;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/sdk/TimerHelper;->stop()V

    .line 389
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewRecordingPoint_:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private init(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    new-instance v1, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMainBottom;Lcn/com/magnity/magnitycx/FragmentMainBottom$1;)V

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->magClickListener_:Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;

    .line 105
    const v1, 0x7f0e00ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0e00bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0e00be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    .line 108
    const v1, 0x7f0e00c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnPalette_:Landroid/widget/ImageButton;

    .line 109
    const v1, 0x7f0e00bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    .line 110
    const v1, 0x7f0e00b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewSelectPointer_:Landroid/widget/ImageView;

    .line 111
    const v1, 0x7f0e00b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->layoutSelection_:Landroid/widget/RelativeLayout;

    .line 112
    const v1, 0x7f0e00bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewRecordingPoint_:Landroid/view/View;

    .line 114
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->magClickListener_:Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->magClickListener_:Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->magClickListener_:Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnPalette_:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->magClickListener_:Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->magClickListener_:Lcn/com/magnity/magnitycx/FragmentMainBottom$MagClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 121
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->screenWidth_:I

    .line 123
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->screenHeight_:I

    .line 125
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->initModeSelection()V

    .line 127
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->onDeviceDisconnected()V

    .line 128
    return-void
.end method

.method private updateButtonsWhenRecordingStatusChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/MainActivity;->getFragmentMainTop()Lcn/com/magnity/magnitycx/FragmentMainTop;

    move-result-object v0

    .line 346
    .local v0, "fragmentMainTop":Lcn/com/magnity/magnitycx/FragmentMainTop;
    if-eqz p1, :cond_0

    .line 348
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewSelectPointer_:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 350
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->layoutSelection_:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 351
    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->showButtonsWhenRecordingFinish()V

    .line 359
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewSelectPointer_:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 356
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->layoutSelection_:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->hideButtonsWhenRecordingStart()V

    goto :goto_0
.end method


# virtual methods
.method public afterFling(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->setNewSelection(I)V

    .line 281
    return-void
.end method

.method public initModeSelection()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xd

    .line 131
    const-string v3, "modeSelection"

    invoke-static {v3, v6}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    .line 132
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 134
    .local v2, "orientation":I
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .local v0, "layoutPhoto":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    .local v1, "layoutRecord":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v5

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v6

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v9

    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 147
    :cond_2
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v5

    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    :cond_3
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v7

    if-eqz v3, :cond_4

    .line 151
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    :cond_4
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v8

    if-eqz v3, :cond_5

    .line 154
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    :cond_5
    iget v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    if-nez v3, :cond_9

    .line 158
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    const v4, 0x7f020058

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 164
    :goto_0
    if-ne v2, v7, :cond_d

    .line 165
    iget v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    if-nez v3, :cond_a

    .line 166
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v5

    if-nez v3, :cond_6

    .line 167
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    :cond_6
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v7

    if-nez v3, :cond_7

    .line 170
    const v3, 0x7f0e00ba

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    :cond_7
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    :cond_8
    :goto_1
    return-void

    .line 160
    :cond_9
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    const v4, 0x7f030032

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 175
    :cond_a
    iget v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    if-ne v3, v7, :cond_8

    .line 176
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v5

    if-nez v3, :cond_b

    .line 177
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    :cond_b
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v6

    if-nez v3, :cond_c

    .line 180
    const v3, 0x7f0e00bb

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    :cond_c
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 187
    :cond_d
    iget v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    if-nez v3, :cond_10

    .line 188
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v5

    if-nez v3, :cond_e

    .line 189
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    :cond_e
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v8

    if-nez v3, :cond_f

    .line 192
    const v3, 0x7f0e00ba

    invoke-virtual {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    :cond_f
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 197
    :cond_10
    iget v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    if-ne v3, v7, :cond_8

    .line 198
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v5

    if-nez v3, :cond_11

    .line 199
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    :cond_11
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v9

    if-nez v3, :cond_12

    .line 202
    const v3, 0x7f0e00bb

    invoke-virtual {v0, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 205
    :cond_12
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method public onCapture()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCaptureFinished(Ljava/lang/String;)V
    .locals 4
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f090092

    .line 262
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 263
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    .line 264
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 265
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 263
    invoke-static {p1, v1, v2}, Lcn/com/magnity/magnitycx/sdk/BitmapUtilities;->getBitmapThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    return-void
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
    const v1, 0x7f040039

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->init(Landroid/view/View;)V

    .line 70
    return-object v0
.end method

.method public onDeviceConnected(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V
    .locals 2
    .param p1, "usbComm"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnPalette_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnPalette_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewSelectPointer_:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewSelectPointer_:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->layoutSelection_:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->layoutSelection_:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    :cond_3
    return-void
.end method

.method public onDeviceDisconnected()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 229
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/MainActivity;->getFragmentMainCenter()Lcn/com/magnity/magnitycx/FragmentMainCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentMainCenter;->stopRecording()V

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->updateButtonsWhenRecordingStatusChanged(Z)V

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->blinkWhenRecordingStatusChanged(Z)V

    .line 233
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnPalette_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnPalette_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 240
    iget v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    if-nez v0, :cond_5

    .line 241
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 245
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewSelectPointer_:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewSelectPointer_:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    :cond_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->layoutSelection_:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->layoutSelection_:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 253
    :cond_4
    return-void

    .line 243
    :cond_5
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    const v1, 0x7f030032

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const v7, 0x7f090092

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcn/com/magnity/magnitycx/MagApplication;->globalFunc:Lcn/com/magnity/magnitycx/sdk/GlobalFunc;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/sdk/GlobalFunc;->updateFileList(Ljava/util/ArrayList;)V

    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 78
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    const v5, 0x7f03000b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 91
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 92
    return-void

    .line 81
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "pathName":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 83
    .local v3, "w":I
    invoke-static {v2, v3, v3}, Lcn/com/magnity/magnitycx/sdk/BitmapUtilities;->getBitmapThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->viewBrowse_:Landroid/widget/ImageButton;

    .line 87
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 88
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 86
    invoke-static {v2, v5, v6}, Lcn/com/magnity/magnitycx/sdk/BitmapUtilities;->getBitmapThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onStartRecording(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 99
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 100
    return-void
.end method

.method public onStopRecording()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method setNewSelection(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    const v12, 0x7f0d005a

    const v11, 0x7f0d0052

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 284
    iget v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    if-eq v6, p1, :cond_0

    invoke-static {}, Lcn/com/magnity/magnitycx/sdk/DeviceController;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v3, 0x0

    .local v3, "posPhoto":F
    const/4 v4, 0x0

    .line 291
    .local v4, "posRecord":F
    const-string v5, ""

    .line 293
    .local v5, "sProperty":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    .line 294
    .local v2, "orientation":I
    if-ne v2, v8, :cond_4

    .line 295
    const-string v5, "x"

    .line 296
    if-nez p1, :cond_3

    .line 297
    iget v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->screenWidth_:I

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 298
    add-float v6, v3, v9

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float v4, v6, v7

    .line 314
    :cond_2
    :goto_1
    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    new-array v7, v8, [F

    aput v3, v7, v10

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 315
    .local v0, "oaPhoto":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    new-array v7, v8, [F

    aput v4, v7, v10

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 317
    .local v1, "oaRecord":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 319
    packed-switch p1, :pswitch_data_0

    .line 336
    :goto_2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 337
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 339
    iput p1, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    .line 340
    const-string v6, "modeSelection"

    iget v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->modeSelection_:I

    invoke-static {v6, v7}, Lcn/com/magnity/magnitycx/sdk/SharedPreferencesManager;->putIntWithCommit(Ljava/lang/String;I)V

    goto :goto_0

    .line 299
    .end local v0    # "oaPhoto":Landroid/animation/ObjectAnimator;
    .end local v1    # "oaRecord":Landroid/animation/ObjectAnimator;
    :cond_3
    if-ne p1, v8, :cond_2

    .line 300
    iget v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->screenWidth_:I

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v4, v6

    .line 301
    sub-float v6, v4, v9

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v3, v6, v7

    goto :goto_1

    .line 304
    :cond_4
    const-string v5, "y"

    .line 305
    if-nez p1, :cond_5

    .line 306
    iget v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->screenHeight_:I

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 307
    sub-float v6, v3, v9

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float v4, v6, v7

    goto :goto_1

    .line 308
    :cond_5
    if-ne p1, v8, :cond_2

    .line 309
    iget v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->screenHeight_:I

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v4, v6

    .line 310
    add-float v6, v4, v9

    iget-object v7, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float v3, v6, v7

    goto :goto_1

    .line 321
    .restart local v0    # "oaPhoto":Landroid/animation/ObjectAnimator;
    .restart local v1    # "oaRecord":Landroid/animation/ObjectAnimator;
    :pswitch_0
    const-wide/16 v6, 0x1e

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 322
    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    const v7, 0x7f020058

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 327
    :pswitch_1
    const-wide/16 v6, 0x1e

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 328
    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvPhoto_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->tvRecord_:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainBottom;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object v6, p0, Lcn/com/magnity/magnitycx/FragmentMainBottom;->btnCapture_:Landroid/widget/ImageButton;

    const v7, 0x7f030032

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
