.class Lcn/com/magnity/magnitymx/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/MainActivity;->exchangeLogo(Landroid/widget/ImageView;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/MainActivity;

.field final synthetic val$btn:Landroid/widget/ImageView;

.field final synthetic val$on:Z

.field final synthetic val$resIdOff:I

.field final synthetic val$resIdOn:I


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;ZLandroid/widget/ImageView;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 543
    iput-object p1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    iput-boolean p2, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$on:Z

    iput-object p3, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$btn:Landroid/widget/ImageView;

    iput p4, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$resIdOn:I

    iput p5, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$resIdOff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 550
    iget-boolean v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$on:Z

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$btn:Landroid/widget/ImageView;

    iget v2, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$resIdOn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 556
    :goto_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$btn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 557
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$btn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 560
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 561
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 565
    .local v0, "anim2":Landroid/view/animation/Animation;
    :goto_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 566
    return-void

    .line 553
    .end local v0    # "anim2":Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$btn:Landroid/widget/ImageView;

    iget v2, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->val$resIdOff:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 563
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$4;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "anim2":Landroid/view/animation/Animation;
    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 571
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 546
    return-void
.end method
