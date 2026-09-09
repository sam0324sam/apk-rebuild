.class Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$1;
.super Ljava/lang/Object;
.source "CheckVersionTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 144
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$1;->this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1$1;->this$1:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;

    iget-object v0, v0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$1;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$300(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)V

    .line 148
    return-void
.end method
