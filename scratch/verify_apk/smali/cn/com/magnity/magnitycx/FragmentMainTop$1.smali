.class Lcn/com/magnity/magnitycx/FragmentMainTop$1;
.super Ljava/lang/Object;
.source "FragmentMainTop.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/FragmentMainTop;->exchangeLogo(Landroid/widget/ImageButton;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

.field final synthetic val$btn:Landroid/widget/ImageButton;

.field final synthetic val$on:Z

.field final synthetic val$resIdOff:I

.field final synthetic val$resIdOn:I


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/FragmentMainTop;ZLandroid/widget/ImageButton;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/FragmentMainTop;

    .prologue
    .line 257
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    iput-boolean p2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$on:Z

    iput-object p3, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$btn:Landroid/widget/ImageButton;

    iput p4, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$resIdOn:I

    iput p5, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$resIdOff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 264
    iget-boolean v1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$on:Z

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$btn:Landroid/widget/ImageButton;

    iget v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$resIdOn:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 270
    :goto_0
    const/4 v0, 0x0

    .line 271
    .local v0, "anim2":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 272
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 276
    :goto_1
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 277
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$btn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 278
    return-void

    .line 267
    .end local v0    # "anim2":Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$btn:Landroid/widget/ImageButton;

    iget v2, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->val$resIdOff:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 274
    .restart local v0    # "anim2":Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMainTop$1;->this$0:Lcn/com/magnity/magnitycx/FragmentMainTop;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMainTop;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f05001a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 283
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 260
    return-void
.end method
