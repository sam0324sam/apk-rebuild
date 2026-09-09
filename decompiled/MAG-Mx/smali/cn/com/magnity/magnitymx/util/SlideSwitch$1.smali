.class Lcn/com/magnity/magnitymx/util/SlideSwitch$1;
.super Ljava/lang/Object;
.source "SlideSwitch.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/util/SlideSwitch;->moveToDest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/util/SlideSwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .prologue
    .line 241
    iput-object p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$1;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 244
    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$1;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$002(Lcn/com/magnity/magnitymx/util/SlideSwitch;I)I

    .line 245
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$1;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$1;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$000(Lcn/com/magnity/magnitymx/util/SlideSwitch;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$1;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$200(Lcn/com/magnity/magnitymx/util/SlideSwitch;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$102(Lcn/com/magnity/magnitymx/util/SlideSwitch;I)I

    .line 246
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$1;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$300(Lcn/com/magnity/magnitymx/util/SlideSwitch;)V

    .line 247
    return-void
.end method
