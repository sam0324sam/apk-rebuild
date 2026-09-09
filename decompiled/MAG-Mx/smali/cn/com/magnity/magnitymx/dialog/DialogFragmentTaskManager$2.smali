.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$2;
.super Ljava/lang/Object;
.source "DialogFragmentTaskManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

.field final synthetic val$localConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Lcn/com/magnity/magnitymx/data/LocalConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 194
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$2;->val$localConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$2;->val$localConfig:Lcn/com/magnity/magnitymx/data/LocalConfig;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v2

    .line 198
    .local v2, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/data/UserInfo;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$000(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v1, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-direct {v1}, Lcn/com/magnity/magnitymx/login/LoginDialog;-><init>()V

    .line 202
    .local v1, "loginDialog":Lcn/com/magnity/magnitymx/login/LoginDialog;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$2;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 203
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 204
    const-class v3, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcn/com/magnity/magnitymx/login/LoginDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 205
    new-instance v3, Lcn/com/magnity/magnitymx/login/LoginPresenter;

    invoke-direct {v3, v1}, Lcn/com/magnity/magnitymx/login/LoginPresenter;-><init>(Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;)V

    goto :goto_0
.end method
