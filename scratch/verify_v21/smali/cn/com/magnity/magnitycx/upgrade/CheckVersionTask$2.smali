.class Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;
.super Ljava/lang/Object;
.source "CheckVersionTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$versionCode:I

.field final synthetic val$versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    .prologue
    .line 246
    iput-object p1, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iput-object p2, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$versionName:Ljava/lang/String;

    iput p3, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$versionCode:I

    iput-object p4, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->otherDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MAG-Cx."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    iget-object v4, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v4}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$500(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 252
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 253
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v5, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$versionCode:I

    if-ne v4, v5, :cond_0

    .line 254
    iget-object v4, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    invoke-static {v4, v0}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$700(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/io/File;)V

    .line 261
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 256
    .restart local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    iget-object v4, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v5, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$versionName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$800(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v4, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->this$0:Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;

    iget-object v5, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask$2;->val$versionName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;->access$800(Lcn/com/magnity/magnitycx/upgrade/CheckVersionTask;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
