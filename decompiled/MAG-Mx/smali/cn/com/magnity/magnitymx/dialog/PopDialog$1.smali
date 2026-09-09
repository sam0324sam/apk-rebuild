.class Lcn/com/magnity/magnitymx/dialog/PopDialog$1;
.super Ljava/lang/Object;
.source "PopDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/PopDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/PopDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/PopDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/PopDialog;

    .prologue
    .line 32
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/PopDialog$1;->this$0:Lcn/com/magnity/magnitymx/dialog/PopDialog;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/dialog/PopDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/PopDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 36
    return-void
.end method
