.class Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;
.super Ljava/lang/Object;
.source "CheckVersionTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;->this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 160
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;->this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$600(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    .line 161
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;->this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$300(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    .line 163
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;->this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$100(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;->this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcn/com/magnity/magnitycx/MainActivity;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$2;->this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/MainActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/MainActivity;->onBackPressed()V

    .line 168
    :cond_0
    return-void
.end method
