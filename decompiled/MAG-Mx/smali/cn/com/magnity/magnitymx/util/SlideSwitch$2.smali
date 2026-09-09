.class Lcn/com/magnity/magnitymx/util/SlideSwitch$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlideSwitch.java"


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

.field final synthetic val$toRight:Z


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/util/SlideSwitch;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/util/SlideSwitch;

    .prologue
    .line 249
    iput-object p1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    iput-boolean p2, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->val$toRight:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 253
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->setSlideable(Z)V

    .line 254
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->val$toRight:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$400(Lcn/com/magnity/magnitymx/util/SlideSwitch;)Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$500(Lcn/com/magnity/magnitymx/util/SlideSwitch;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$400(Lcn/com/magnity/magnitymx/util/SlideSwitch;)Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;->open()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$502(Lcn/com/magnity/magnitymx/util/SlideSwitch;Z)Z

    .line 258
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$200(Lcn/com/magnity/magnitymx/util/SlideSwitch;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$602(Lcn/com/magnity/magnitymx/util/SlideSwitch;I)I

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$400(Lcn/com/magnity/magnitymx/util/SlideSwitch;)Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$500(Lcn/com/magnity/magnitymx/util/SlideSwitch;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 261
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$400(Lcn/com/magnity/magnitymx/util/SlideSwitch;)Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/magnity/magnitymx/util/SlideSwitch$SlideListener;->close()V

    .line 262
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$502(Lcn/com/magnity/magnitymx/util/SlideSwitch;Z)Z

    .line 263
    iget-object v0, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/util/SlideSwitch$2;->this$0:Lcn/com/magnity/magnitymx/util/SlideSwitch;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$700(Lcn/com/magnity/magnitymx/util/SlideSwitch;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/util/SlideSwitch;->access$602(Lcn/com/magnity/magnitymx/util/SlideSwitch;I)I

    goto :goto_0
.end method
