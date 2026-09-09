.class public Lcn/com/magnity/magnitycx/FragmentMainTop;
.super Landroid/support/v4/app/Fragment;
.source "FragmentMainTop.java"

# interfaces
.implements Lcn/com/magnity/magnitycx/sdk/DelegateDeviceConnected;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;,
        Lcn/com/magnity/magnitycx/FragmentMainTop$DelegateDisplayModeChanged;
    }
.end annotation


# instance fields
.field private btnCross_:Landroid/widget/ImageButton;

.field private btnLaserOn_:Landroid/widget/ImageButton;

.field private btnMode_:Landroid/widget/ImageButton;

.field private btnMore_:Landroid/widget/ImageButton;

.field private btnTraceMaxMin_:Landroid/widget/ImageButton;

.field private btnZoom_:Landroid/widget/ImageButton;

.field private clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

.field private popupWindowMore_:Landroid/widget/PopupWindow;

.field private usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainTop;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitycx/FragmentMainTop;Landroid/widget/ImageButton;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainTop;
    .param p1, "x1"    # Landroid/widget/ImageButton;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/magnity/magnitycx/FragmentMainTop;->exchangeLogo(Landroid/widget/ImageButton;IIZ)V

    return-void
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainTop;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainTop;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainTop;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitycx/FragmentMainTop;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitycx/FragmentMainTop;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->popupWindowMore_:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private exchangeLogo(Landroid/widget/ImageButton;IIZ)V
    .locals 7
    .param p1, "btn"    # Landroid/widget/ImageButton;
    .param p2, "resIdOn"    # I
    .param p3, "resIdOff"    # I
    .param p4, "on"    # Z

    .prologue
    .line 249
    const/4 v6, 0x0

    .line 251
    .local v6, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050019

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 256
    :goto_0
    const-wide/16 v0, 0xc8

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 257
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/com/magnity/magnitycx/FragmentMainTop$1;-><init>(Lcn/com/magnity/magnitycx/FragmentMainTop;ZLandroid/widget/ImageButton;II)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 285
    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    goto :goto_0
.end method

.method private initPopupWindowMore()V
    .locals 11

    .prologue
    const v10, 0x7f0e00f5

    const v9, 0x7f0e00f4

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 111
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04005a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "moreView":Landroid/view/View;
    const v4, 0x7f0e011c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 114
    .local v2, "viewItem":Landroid/view/View;
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 116
    .local v3, "viewLogo":Landroid/widget/ImageView;
    const v4, 0x7f030037

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, "txtView":Landroid/widget/TextView;
    const v4, 0x7f08002d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 120
    const v4, 0x7f0e011d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 121
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "viewLogo":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 123
    .restart local v3    # "viewLogo":Landroid/widget/ImageView;
    const v4, 0x7f03000e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "txtView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 125
    .restart local v1    # "txtView":Landroid/widget/TextView;
    const v4, 0x7f080028

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 127
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v0, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->popupWindowMore_:Landroid/widget/PopupWindow;

    .line 129
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->popupWindowMore_:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 130
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->popupWindowMore_:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 131
    iget-object v4, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->popupWindowMore_:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method private setIconsVisible(Landroid/view/Menu;Z)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "flag"    # Z

    .prologue
    .line 234
    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setOptionalIconsVisible"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 240
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 242
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public closeLaser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-virtual {v0, v3}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->setLaserState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const-string v0, "Fail to set laser off"

    invoke-static {v0}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    const v1, 0x7f030016

    const v2, 0x7f030015

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/com/magnity/magnitycx/FragmentMainTop;->exchangeLogo(Landroid/widget/ImageButton;IIZ)V

    .line 303
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput-boolean v3, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isLaserOn:Z

    goto :goto_0
.end method

.method public hideButtonsWhenRecordingStart()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 219
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMore_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMainTop;Lcn/com/magnity/magnitycx/FragmentMainTop$1;)V

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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
    const/4 v4, 0x1

    .line 60
    const v2, 0x7f04003b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0e00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    .line 63
    const v2, 0x7f0e00c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    .line 64
    const v2, 0x7f0e00cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    .line 65
    const v2, 0x7f0e00cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMore_:Landroid/widget/ImageButton;

    .line 66
    const v2, 0x7f0e00cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    .line 67
    const v2, 0x7f0e00ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    .line 69
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMore_:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->clickListener_:Lcn/com/magnity/magnitycx/FragmentMainTop$MainTopClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->dispMode:I

    if-ne v2, v4, :cond_1

    .line 77
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    const v3, 0x7f030009

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 82
    :goto_0
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isShowCross:Z

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    const v3, 0x7f030005

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 88
    :goto_1
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-boolean v2, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isTraceMaxMin:Z

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    const v3, 0x7f03003b

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 94
    :goto_2
    sget-object v2, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget v0, v2, Lcn/com/magnity/magnitycx/sdk/MagParameter;->imageEX:I

    .line 95
    .local v0, "ratio":I
    if-nez v0, :cond_4

    .line 96
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    const v3, 0x7f03003d

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 103
    :cond_0
    :goto_3
    invoke-direct {p0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->initPopupWindowMore()V

    .line 105
    invoke-virtual {p0}, Lcn/com/magnity/magnitycx/FragmentMainTop;->onDeviceDisconnected()V

    .line 107
    return-object v1

    .line 79
    .end local v0    # "ratio":I
    :cond_1
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    const v3, 0x7f03000a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    const v3, 0x7f030004

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 91
    :cond_3
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    const v3, 0x7f03003a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 97
    .restart local v0    # "ratio":I
    :cond_4
    if-ne v0, v4, :cond_5

    .line 98
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    const v3, 0x7f03003e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 99
    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    const v3, 0x7f03003f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3
.end method

.method public onDeviceConnected(Lcn/com/magnity/magnitycx/sdk/UsbCommunication;)V
    .locals 3
    .param p1, "comm"    # Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 136
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .line 138
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 146
    :cond_1
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->basePara1:Lcn/com/magnity/magnitycx/sdk/BasePara1;

    iget v0, v0, Lcn/com/magnity/magnitycx/sdk/BasePara1;->devType:I

    packed-switch v0, :pswitch_data_0

    .line 191
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 157
    :cond_4
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 165
    :cond_5
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 168
    :cond_6
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    .line 169
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 171
    :cond_7
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 176
    :pswitch_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    .line 177
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 179
    :cond_8
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 182
    :cond_9
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 186
    :cond_a
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDeviceDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/16 v1, 0x8

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    .line 197
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnCross_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnTraceMaxMin_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 213
    :cond_3
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnZoom_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    :cond_4
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public openLaser()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 289
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->usbComm_:Lcn/com/magnity/magnitycx/sdk/UsbCommunication;

    invoke-virtual {v0, v3}, Lcn/com/magnity/magnitycx/sdk/UsbCommunication;->setLaserState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const-string v0, "Fail to set laser off"

    invoke-static {v0}, Lcn/com/magnity/magnitycx/log/Logging;->error(Ljava/lang/Object;)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnLaserOn_:Landroid/widget/ImageButton;

    const v1, 0x7f030016

    const v2, 0x7f030015

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/com/magnity/magnitycx/FragmentMainTop;->exchangeLogo(Landroid/widget/ImageButton;IIZ)V

    .line 294
    sget-object v0, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iput-boolean v3, v0, Lcn/com/magnity/magnitycx/sdk/MagParameter;->isLaserOn:Z

    goto :goto_0
.end method

.method public showButtonsWhenRecordingFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMode_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentMainTop;->btnMore_:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 226
    return-void
.end method
