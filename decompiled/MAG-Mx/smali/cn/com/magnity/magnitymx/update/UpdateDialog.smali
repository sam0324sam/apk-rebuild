.class public Lcn/com/magnity/magnitymx/update/UpdateDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "UpdateDialog.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBaseView;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateDialog"


# instance fields
.field private mApkUrl:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mPresenter:Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBasePresenter;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "akpUrl"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mVersionName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mApkUrl:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mDescription:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0801a7

    if-ne v3, v4, :cond_0

    .line 78
    new-instance v0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;-><init>()V

    .line 79
    .local v0, "downloadProgressDialog":Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;
    const-string v3, "MAG-Mx-%s.apk"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mVersionName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "fileName":Ljava/lang/String;
    new-instance v3, Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    iget-object v4, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mApkUrl:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v4}, Lcn/com/magnity/magnitymx/update/DownloadPresenter;-><init>(Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 82
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v2, :cond_0

    .line 83
    const-class v3, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->dismiss()V

    .line 87
    .end local v0    # "downloadProgressDialog":Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    const/4 v10, 0x1

    .line 43
    if-eqz p3, :cond_0

    .line 44
    const-string v6, "mVersionName"

    const-string v7, ""

    invoke-virtual {p3, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mVersionName:Ljava/lang/String;

    .line 45
    const-string v6, "mApkUrl"

    const-string v7, ""

    invoke-virtual {p3, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mApkUrl:Ljava/lang/String;

    .line 46
    const-string v6, "mDescription"

    const-string v7, ""

    invoke-virtual {p3, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mDescription:Ljava/lang/String;

    .line 48
    :cond_0
    const v6, 0x7f0a0046

    invoke-virtual {p1, v6, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "rootView":Landroid/view/View;
    const v6, 0x7f0e0140

    invoke-virtual {p0, v6}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mVersionName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "title":Ljava/lang/String;
    const v6, 0x7f0801a9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "titleTextView":Landroid/widget/TextView;
    const v6, 0x7f0801a8

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "contentTextView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v6, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v6, 0x7f0801a7

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 55
    .local v5, "updateButton":Landroid/widget/Button;
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 58
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 61
    :cond_1
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    const-string v0, "mVersionName"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "mApkUrl"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mApkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "mDescription"

    iget-object v1, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 67
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 68
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 73
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBasePresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBasePresenter;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/UpdateDialog;->mPresenter:Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBasePresenter;

    .line 30
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBasePresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/update/UpdateDialog;->setPresenter(Lcn/com/magnity/magnitymx/update/IUpdateContract$IUpdateBasePresenter;)V

    return-void
.end method
