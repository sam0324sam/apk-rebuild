.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$1;
.super Ljava/lang/Object;
.source "DialogFragmentSlider.java"

# interfaces
.implements Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar$OnRangeSeekBarChangeListener;


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
    .line 87
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    iput p2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeSeekBarValuesChanged(Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "bar"    # Lcom/yahoo/mobile/client/android/util/rangeseekbar/RangeSeekBar;
    .param p2, "minValue"    # Ljava/lang/Object;
    .param p3, "maxValue"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$1;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;

    iget v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider$1;->val$id:I

    invoke-static {v0, v1, p2, p3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentSlider;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 91
    return-void
.end method
