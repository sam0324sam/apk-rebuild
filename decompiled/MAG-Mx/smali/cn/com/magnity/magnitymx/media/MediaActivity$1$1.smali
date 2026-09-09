.class Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/MediaActivity$1;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/MediaActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    .prologue
    .line 145
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v1, v1, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    const v2, 0x7f0e0129

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    new-instance v1, Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;-><init>()V

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$202(Lcn/com/magnity/magnitymx/media/MediaActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 151
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0800b3

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v2, v2, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 153
    :cond_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaActivity$1$1;->this$1:Lcn/com/magnity/magnitymx/media/MediaActivity$1;

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/MediaActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->updateGridView()V

    .line 154
    return-void
.end method
