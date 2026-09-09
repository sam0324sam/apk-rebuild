.class Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog$1;
.super Ljava/lang/Object;
.source "Camera2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;

    .prologue
    .line 987
    iput-object p1, p0, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog$1;->this$0:Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lcn/com/magnity/magnitymx/camera/Camera2$ErrorDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 991
    return-void
.end method
