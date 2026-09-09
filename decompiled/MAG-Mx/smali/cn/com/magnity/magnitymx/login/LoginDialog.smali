.class public Lcn/com/magnity/magnitymx/login/LoginDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "LoginDialog.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;
    }
.end annotation


# static fields
.field private static final LOGIN_FAILED:I = 0x1

.field private static final LOGIN_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LoginDialog"


# instance fields
.field private isRemember:Z

.field private isServerSettingOpened:Z

.field private mLoginButton:Landroid/widget/Button;

.field private mPresenter:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

.field private mRememberPwdBox:Landroid/widget/CheckBox;

.field private mServerAddr:Ljava/lang/String;

.field private mServerAddrEdit:Landroid/widget/EditText;

.field private mServerPort:I

.field private mServerPortEdit:Landroid/widget/EditText;

.field private mServerSettingLayout:Landroid/widget/LinearLayout;

.field private mServerSettingMoreImageView:Landroid/widget/ImageView;

.field private mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

.field private mUserName:Ljava/lang/String;

.field private mUserNameEdit:Landroid/widget/EditText;

.field private mUserPwd:Ljava/lang/String;

.field private mUserPwdEdit:Landroid/widget/EditText;

.field private mWaitingCursor:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->isServerSettingOpened:Z

    .line 55
    new-instance v0, Lcn/com/magnity/magnitymx/util/ToastUtils;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/util/ToastUtils;-><init>()V

    iput-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/login/LoginDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->isServerSettingOpened:Z

    return v0
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/login/LoginDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->isServerSettingOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerSettingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/com/magnity/magnitymx/login/LoginDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerPort:I

    return v0
.end method

.method static synthetic access$1002(Lcn/com/magnity/magnitymx/login/LoginDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerPort:I

    return p1
.end method

.method static synthetic access$1100(Lcn/com/magnity/magnitymx/login/LoginDialog;)Lcn/com/magnity/magnitymx/util/ToastUtils;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mWaitingCursor:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/com/magnity/magnitymx/login/LoginDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->updateUiWhenVerifying()V

    return-void
.end method

.method static synthetic access$1400(Lcn/com/magnity/magnitymx/login/LoginDialog;)Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mPresenter:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mRememberPwdBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerSettingMoreImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserPwdEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerAddrEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/login/LoginDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerPortEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcn/com/magnity/magnitymx/login/LoginDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcn/com/magnity/magnitymx/login/LoginDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcn/com/magnity/magnitymx/login/LoginDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcn/com/magnity/magnitymx/login/LoginDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserPwd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcn/com/magnity/magnitymx/login/LoginDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcn/com/magnity/magnitymx/login/LoginDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/login/LoginDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerAddr:Ljava/lang/String;

    return-object p1
.end method

.method private updateUiWhenVerifying()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 126
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 127
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "isRemember"    # Z

    .prologue
    .line 196
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserName:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserPwd:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerAddr:Ljava/lang/String;

    .line 199
    iput p4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerPort:I

    .line 200
    iput-boolean p5, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->isRemember:Z

    .line 201
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 70
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 71
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 72
    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 76
    :cond_0
    new-instance v0, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/login/LoginDialog;)V

    .line 77
    .local v0, "clickListener":Lcn/com/magnity/magnitymx/login/LoginDialog$MagOnClickListener;
    const v4, 0x7f0a003d

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "root":Landroid/view/View;
    const v4, 0x7f0800e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mLoginButton:Landroid/widget/Button;

    .line 79
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v4, 0x7f0801ad

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserNameEdit:Landroid/widget/EditText;

    .line 81
    const v4, 0x7f0801ae

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserPwdEdit:Landroid/widget/EditText;

    .line 82
    const v4, 0x7f080144

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerAddrEdit:Landroid/widget/EditText;

    .line 83
    const v4, 0x7f080145

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerPortEdit:Landroid/widget/EditText;

    .line 84
    const v4, 0x7f0801b4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mWaitingCursor:Landroid/widget/ProgressBar;

    .line 85
    const v4, 0x7f080121

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mRememberPwdBox:Landroid/widget/CheckBox;

    .line 86
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mRememberPwdBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v4, 0x7f080146

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerSettingLayout:Landroid/widget/LinearLayout;

    .line 88
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerSettingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v4, 0x7f080147

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerSettingMoreImageView:Landroid/widget/ImageView;

    .line 90
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerSettingMoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v4, 0x7f080193

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .local v2, "titleImage":Landroid/widget/ImageView;
    const-string v4, "mag"

    const-string v5, "zhongxing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserNameEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserPwdEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mUserPwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mRememberPwdBox:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->isRemember:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerAddrEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerPort:I

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerPortEdit:Landroid/widget/EditText;

    iget v5, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mServerPort:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 121
    iget-object v0, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mPresenter:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;->stop()V

    .line 122
    return-void
.end method

.method public onResponse(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mWaitingCursor:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0081

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    .line 208
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mPresenter:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

    invoke-interface {v1}, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;->saveData()V

    .line 209
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->dismiss()V

    .line 211
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 212
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lcn/com/magnity/magnitymx/settings/SettingsActivity;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/settings/SettingsActivity;->updateAccountName()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 216
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0080

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mToastUtils:Lcn/com/magnity/magnitymx/util/ToastUtils;

    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00dc

    invoke-virtual {v1, v2, v3}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 110
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 111
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 112
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getInstance()Lcn/com/magnity/magnitymx/MagApp;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/MagApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 114
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 116
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

    .prologue
    .line 191
    iput-object p1, p0, Lcn/com/magnity/magnitymx/login/LoginDialog;->mPresenter:Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

    .line 192
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/login/LoginDialog;->setPresenter(Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginPresenter;)V

    return-void
.end method
