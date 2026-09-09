.class public Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentDeviceAddEdit.java"


# static fields
.field private static final ARGS_DEVINFO:Ljava/lang/String; = "devinfo"

.field private static final ARGS_POS:Ljava/lang/String; = "pos"


# instance fields
.field private mCmdPortEdit:Landroid/widget/EditText;

.field private mConnectCloudSwitch:Landroid/widget/Switch;

.field private mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

.field private mIPEdit:Landroid/widget/EditText;

.field private mImgPortEdit:Landroid/widget/EditText;

.field private mNameEdit:Landroid/widget/EditText;

.field private mPos:I

.field private mSNEdit:Landroid/widget/EditText;

.field private mUserNameEdit:Landroid/widget/EditText;

.field private mUserPwdEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mIPEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserPwdEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mSNEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mConnectCloudSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCmdPortEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mImgPortEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    .prologue
    .line 23
    iget v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mPos:I

    return v0
.end method

.method public static newInstance(Lcn/com/magnity/magnitymx/data/DeviceInfo;I)Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;
    .locals 3
    .param p0, "deviceInfo"    # Lcn/com/magnity/magnitymx/data/DeviceInfo;
    .param p1, "pos"    # I

    .prologue
    .line 43
    new-instance v1, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;-><init>()V

    .line 44
    .local v1, "dlg":Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "devinfo"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    const-string v2, "pos"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v1, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
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
    const v9, 0x833d

    const v8, 0x833c

    const/4 v7, -0x1

    .line 55
    const v5, 0x7f0a0039

    invoke-virtual {p1, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 57
    .local v4, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 59
    const/4 v5, 0x0

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mNameEdit:Landroid/widget/EditText;

    .line 60
    const v5, 0x7f080096

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mSNEdit:Landroid/widget/EditText;

    .line 61
    const v5, 0x7f08009b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mIPEdit:Landroid/widget/EditText;

    .line 62
    const v5, 0x7f080093

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mConnectCloudSwitch:Landroid/widget/Switch;

    .line 63
    const v5, 0x7f0800bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserNameEdit:Landroid/widget/EditText;

    .line 64
    const v5, 0x7f0800bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserPwdEdit:Landroid/widget/EditText;

    .line 65
    const v5, 0x7f080091

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCmdPortEdit:Landroid/widget/EditText;

    .line 66
    const v5, 0x7f080099

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mImgPortEdit:Landroid/widget/EditText;

    .line 68
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_9

    .line 70
    const-string v5, "devinfo"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcn/com/magnity/magnitymx/data/DeviceInfo;

    iput-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    .line 71
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    if-eqz v5, :cond_7

    .line 72
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mNameEdit:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 73
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mNameEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->ismIsCloud()Z

    move-result v2

    .line 76
    .local v2, "isCloud":Z
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mConnectCloudSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 77
    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mSNEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mIPEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudIp()I

    move-result v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserNameEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudUser()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserPwdEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getCloudPwd()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCmdPortEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCamCmdPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mImgPortEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCamImgPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v2    # "isCloud":Z
    :goto_6
    const-string v5, "pos"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mPos:I

    .line 103
    :goto_7
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mIPEdit:Landroid/widget/EditText;

    iget-object v6, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mIPEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 105
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mConnectCloudSwitch:Landroid/widget/Switch;

    new-instance v6, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;

    invoke-direct {v6, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$1;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    const v5, 0x7f0800a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 145
    .local v3, "okBtn":Landroid/widget/Button;
    new-instance v5, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;

    invoke-direct {v5, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$2;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v5, 0x7f080090

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 234
    .local v1, "cancelBtn":Landroid/widget/Button;
    new-instance v5, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$3;

    invoke-direct {v5, p0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit$3;-><init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-object v4

    .line 77
    .end local v1    # "cancelBtn":Landroid/widget/Button;
    .end local v3    # "okBtn":Landroid/widget/Button;
    .restart local v2    # "isCloud":Z
    :cond_1
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getSerialNo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 79
    :cond_2
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceIp()I

    move-result v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/Utils;->convertIpAddr(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 80
    :cond_3
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDeviceUser()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 81
    :cond_4
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getDevicePwd()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 82
    :cond_5
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCloudCmdPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 83
    :cond_6
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCurrentDeviceInfo:Lcn/com/magnity/magnitymx/data/DeviceInfo;

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/data/DeviceInfo;->getmCloudImgPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 86
    .end local v2    # "isCloud":Z
    :cond_7
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mConnectCloudSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 87
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserNameEdit:Landroid/widget/EditText;

    const-string v6, "magnity"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserPwdEdit:Landroid/widget/EditText;

    const-string v6, "any123"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCmdPortEdit:Landroid/widget/EditText;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mImgPortEdit:Landroid/widget/EditText;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 92
    :cond_8
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserNameEdit:Landroid/widget/EditText;

    const-string v6, "admin"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mUserPwdEdit:Landroid/widget/EditText;

    const-string v6, "admin123"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mCmdPortEdit:Landroid/widget/EditText;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mImgPortEdit:Landroid/widget/EditText;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 100
    :cond_9
    iput v7, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentDeviceAddEdit;->mPos:I

    goto/16 :goto_7
.end method
