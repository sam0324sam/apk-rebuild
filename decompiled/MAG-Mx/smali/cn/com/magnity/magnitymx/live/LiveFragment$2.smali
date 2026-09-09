.class Lcn/com/magnity/magnitymx/live/LiveFragment$2;
.super Ljava/lang/Object;
.source "LiveFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/live/LiveFragment;->removeTasksFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/LiveFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/live/LiveFragment;

    .prologue
    .line 300
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$2;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 308
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$2;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/live/LiveFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 309
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$2;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/live/LiveFragment;->access$300(Lcn/com/magnity/magnitymx/live/LiveFragment;)Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitNow()V

    .line 310
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$2;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/live/LiveFragment;->access$302(Lcn/com/magnity/magnitymx/live/LiveFragment;Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .line 311
    iget-object v1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$2;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/live/LiveFragment;->access$202(Lcn/com/magnity/magnitymx/live/LiveFragment;Z)Z

    .line 312
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 317
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 303
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$2;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/live/LiveFragment;->access$202(Lcn/com/magnity/magnitymx/live/LiveFragment;Z)Z

    .line 304
    return-void
.end method
