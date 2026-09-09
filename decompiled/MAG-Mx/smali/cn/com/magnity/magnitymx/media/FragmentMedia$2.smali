.class Lcn/com/magnity/magnitymx/media/FragmentMedia$2;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/FragmentMedia;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

.field final synthetic val$runInBackground:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 259
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$2;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$2;->val$runInBackground:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 262
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$2;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$102(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)Z

    .line 263
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$2;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 264
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$2;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$2;->val$runInBackground:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    return-void
.end method
