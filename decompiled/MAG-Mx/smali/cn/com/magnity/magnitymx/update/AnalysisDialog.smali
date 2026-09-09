.class public Lcn/com/magnity/magnitymx/update/AnalysisDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "AnalysisDialog.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBaseView;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancelView:Landroid/widget/TextView;

.field private mDownloadView:Landroid/widget/TextView;

.field private mPresenter:Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBasePresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f08018e

    if-ne v4, v5, :cond_1

    .line 61
    new-instance v0, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;

    invoke-direct {v0}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;-><init>()V

    .line 62
    .local v0, "downloadProgressDialog":Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;
    const-string v1, "Thermoscope.apk"

    .line 63
    .local v1, "fileName":Ljava/lang/String;
    const-string v3, "http://www.magnity.com.cn/APPs/Thermoscope.apk"

    .line 64
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lcn/com/magnity/magnitymx/update/DownloadPresenter;

    invoke-direct {v4, v0, v1, v3}, Lcn/com/magnity/magnitymx/update/DownloadPresenter;-><init>(Lcn/com/magnity/magnitymx/update/IDownloadContract$IDownloadBaseView;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 66
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v2, :cond_0

    .line 67
    const-class v4, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->dismiss()V

    .line 73
    .end local v0    # "downloadProgressDialog":Lcn/com/magnity/magnitymx/update/DownloadProgressDialog;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f08018d

    if-ne v4, v5, :cond_0

    .line 71
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->dismiss()V

    goto :goto_0
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
    .line 28
    const v2, 0x7f0a0038

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 31
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 32
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 35
    :cond_0
    const v2, 0x7f08018e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->mDownloadView:Landroid/widget/TextView;

    .line 36
    const v2, 0x7f08018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->mCancelView:Landroid/widget/TextView;

    .line 37
    iget-object v2, p0, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->mDownloadView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v2, p0, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object v1
.end method

.method public onStart()V
    .locals 8

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 45
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 46
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 51
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method public setPresenter(Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBasePresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBasePresenter;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->mPresenter:Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBasePresenter;

    .line 56
    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBasePresenter;

    invoke-virtual {p0, p1}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->setPresenter(Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBasePresenter;)V

    return-void
.end method
