.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentDeviceInfo.java"


# instance fields
.field private mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

.field private mDeviceIp:Landroid/widget/TextView;

.field private mDeviceMac:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceSerialNo:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 34
    new-instance v0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo$1;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;)V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SEND_DEVICE_INFO"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/util/MsgBus;->register(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v0

    const-string v1, "GET_DEVICE_INFO"

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/MsgBus;->postEmptytMsg(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;Lcn/com/magnity/magnitymx/data/DeviceInfo;)Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->updateTextViews(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    return-void
.end method

.method private updateTextViews(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCameraName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceSerialNo:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceSerialNo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceIp:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 82
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceIp:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCommunicationType()I

    move-result v1

    if-nez v1, :cond_4

    .line 83
    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceMac:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceMac:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_3
    :goto_1
    return-void

    .line 83
    :cond_4
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to show device informations - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->w(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
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
    .line 59
    const v1, 0x7f0a003a

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 61
    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceName:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceSerialNo:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceIp:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceMac:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->mDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-direct {p0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->updateTextViews(Lcn/com/magnity/magnitymx/data/DeviceInfo;)V

    .line 70
    :cond_0
    return-object v0
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 95
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 98
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 99
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 101
    .local v3, "windowParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 102
    .local v1, "dimAmount":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060081

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 103
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 104
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007e

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 105
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 106
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    .end local v0    # "alphaValue":Landroid/util/TypedValue;
    .end local v1    # "dimAmount":Landroid/util/TypedValue;
    .end local v3    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
