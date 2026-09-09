.class public Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DownloadProgressDialog.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProgressDialog"


# instance fields
.field private isInstalled:Z

.field private mPresenter:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public error()V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->dismiss()V

    .line 90
    new-instance v0, Lcn/com/magnity/magnitymx/util/ToastUtils;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/util/ToastUtils;-><init>()V

    .line 91
    .local v0, "toastUtils":Lcn/com/magnity/magnitymx/util/ToastUtils;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00dc

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/util/ToastUtils;->showText(Landroid/content/Context;I)V

    .line 92
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->isInstalled:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mPresenter:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;->install()V

    .line 82
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->dismiss()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->isInstalled:Z

    .line 85
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 31
    const v2, 0x7f0a003b

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 33
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 34
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 36
    :cond_0
    const v2, 0x7f08005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 37
    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    .line 38
    iget-object v2, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mPresenter:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mPresenter:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;->download()V

    .line 41
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->isInstalled:Z

    .line 42
    return-object v1
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 47
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 48
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 49
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method public progress(JJ)V
    .locals 11
    .param p1, "downloaded"    # J
    .param p3, "total"    # J

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    .line 65
    iget-object v6, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 66
    long-to-float v6, p1

    long-to-float v7, p3

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 68
    .local v2, "progress":I
    iget-object v6, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    long-to-double v6, p1

    div-double v0, v6, v8

    .line 70
    .local v0, "downloadedMb":D
    long-to-double v6, p3

    div-double v4, v6, v8

    .line 71
    .local v4, "totalMb":D
    const v6, 0x7f0e0142

    invoke-virtual {p0, v6}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "text":Ljava/lang/String;
    iget-object v6, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v6, 0x64

    if-ne v2, v6, :cond_0

    .line 74
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->finish()V

    .line 76
    :cond_0
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mPresenter:Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;

    .line 61
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->setPresenter(Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBasePresenter;)V

    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    .line 96
    iget-object v1, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 97
    const v1, 0x7f0e0142

    invoke-virtual {p0, v1}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
