.class public Lcn/com/magnity/magnitymx/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    .line 12
    return-void
.end method


# virtual methods
.method public showText(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "string_id"    # I

    .prologue
    .line 15
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 18
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    .line 19
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 20
    return-void
.end method

.method public showText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 23
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 24
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    .line 29
    :goto_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/ToastUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method
