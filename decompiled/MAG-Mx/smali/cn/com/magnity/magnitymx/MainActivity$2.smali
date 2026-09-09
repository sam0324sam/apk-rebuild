.class Lcn/com/magnity/magnitymx/MainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/MainActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/MainActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcn/com/magnity/magnitymx/MainActivity$2;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    const-string v1, "ptz_command_value"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, "command":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcn/com/magnity/magnitymx/MainActivity$2;->this$0:Lcn/com/magnity/magnitymx/MainActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/MainActivity;->access$300(Lcn/com/magnity/magnitymx/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    .line 319
    :cond_0
    return-void
.end method
