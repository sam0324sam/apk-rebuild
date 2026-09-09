.class Lcn/com/magnity/magnitycx/MagApplication$2;
.super Ljava/lang/Object;
.source "MagApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/MagApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/MagApplication;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/MagApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/MagApplication;

    .prologue
    .line 76
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MagApplication;->access$008(Lcn/com/magnity/magnitycx/MagApplication;)I

    .line 84
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MagApplication;->access$000(Lcn/com/magnity/magnitycx/MagApplication;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MagApplication;->access$200(Lcn/com/magnity/magnitycx/MagApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/MagApplication;->access$100(Lcn/com/magnity/magnitycx/MagApplication;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MagApplication;->access$302(Z)Z

    .line 88
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MagApplication;->access$010(Lcn/com/magnity/magnitycx/MagApplication;)I

    .line 102
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MagApplication;->access$000(Lcn/com/magnity/magnitycx/MagApplication;)I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcn/com/magnity/magnitycx/MagApplication;->access$300()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/MagApplication;->access$200(Lcn/com/magnity/magnitycx/MagApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitycx/MagApplication$2;->this$0:Lcn/com/magnity/magnitycx/MagApplication;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/MagApplication;->access$100(Lcn/com/magnity/magnitycx/MagApplication;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_0
    return-void
.end method
