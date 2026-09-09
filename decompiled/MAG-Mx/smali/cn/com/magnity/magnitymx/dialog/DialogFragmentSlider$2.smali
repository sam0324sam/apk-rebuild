.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;
.super Ljava/lang/Object;
.source "DialogFragmentSlider.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    .prologue
    .line 97
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    iput p2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 116
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->val$id:I

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onFunctionOpened(ILjava/lang/String;Z)[I

    .line 119
    :cond_0
    return-void
.end method

.method public open()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 101
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 102
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v2, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v2, :cond_0

    .line 103
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->val$id:I

    const-string v3, ""

    invoke-interface {v0, v2, v3, v5}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onFunctionOpened(ILjava/lang/String;Z)[I

    move-result-object v1

    .line 104
    .local v1, "values":[I
    if-eqz v1, :cond_0

    .line 105
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    iget-object v2, v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    aget v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 106
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    iget-object v2, v2, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->rangeSeekBar:Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;

    aget v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;->setSelectedMinValue(Ljava/lang/Number;)V

    .line 107
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    iget v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$2;->val$id:I

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .end local v1    # "values":[I
    :cond_0
    return-void
.end method
