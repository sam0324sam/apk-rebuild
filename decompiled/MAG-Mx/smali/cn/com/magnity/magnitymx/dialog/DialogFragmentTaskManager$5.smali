.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$5;
.super Ljava/lang/Object;
.source "DialogFragmentTaskManager.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 315
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$5;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 326
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$5;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 327
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$5;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)I

    move-result v1

    const-string v2, "task_gotonext"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onFunctionOpened(ILjava/lang/String;Z)[I

    .line 330
    :cond_0
    return-void
.end method

.method public open()V
    .locals 4

    .prologue
    .line 318
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$5;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 319
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v1, :cond_0

    .line 320
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$5;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)I

    move-result v1

    const-string v2, "task_gotonext"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onFunctionOpened(ILjava/lang/String;Z)[I

    .line 322
    :cond_0
    return-void
.end method
