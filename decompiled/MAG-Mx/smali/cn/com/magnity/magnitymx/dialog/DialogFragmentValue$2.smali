.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$2;
.super Ljava/lang/Object;
.source "DialogFragmentValue.java"

# interfaces
.implements Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

    .prologue
    .line 88
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeSeekBarValuesChanged(Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "bar"    # Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;
    .param p2, "minValue"    # Ljava/lang/Object;
    .param p3, "maxValue"    # Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 93
    .local v0, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v1, v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v0    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentValue$2;->val$args:Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method
