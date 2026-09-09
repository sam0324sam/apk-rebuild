.class Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$4;
.super Ljava/lang/Object;
.source "CheckVersionTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->showUpgradeDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 271
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$4;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 274
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$4;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcn/com/magnity/magnitycx/MainActivity;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$4;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/MainActivity;->onBackPressed()V

    .line 277
    :cond_0
    return-void
.end method
