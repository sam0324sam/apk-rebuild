.class Lcn/com/magnity/magnitycx/sdk/VideoRecorder$1;
.super Ljava/lang/Object;
.source "VideoRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/sdk/VideoRecorder;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 420
    :try_start_0
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->getInstance()Lcn/com/magnity/magnitycx/MagApplication;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    iget-object v1, p0, Lcn/com/magnity/magnitycx/sdk/VideoRecorder$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 425
    return-void
.end method
