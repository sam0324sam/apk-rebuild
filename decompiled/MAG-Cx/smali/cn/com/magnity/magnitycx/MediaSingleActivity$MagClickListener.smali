.class Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;
.super Ljava/lang/Object;
.source "MediaSingleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;Lcn/com/magnity/magnitycx/MediaSingleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/MediaSingleActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/MediaSingleActivity$1;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;-><init>(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 334
    :sswitch_0
    iget-object v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v4}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$300(Lcn/com/magnity/magnitycx/MediaSingleActivity;)V

    goto :goto_0

    .line 337
    :sswitch_1
    iget-object v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getMediaInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->newInstance(Ljava/util/ArrayList;)Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;

    move-result-object v1

    .line 338
    .local v1, "dlgMediaInfo":Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;
    iget-object v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialogFragmentMediaInfo"

    invoke-virtual {v1, v4, v5}, Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    .end local v1    # "dlgMediaInfo":Lcn/com/magnity/magnitycx/DialogFragmentMediaInfo;
    :sswitch_2
    const v4, 0x7f040036

    invoke-static {v4}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->newInstance(I)Lcn/com/magnity/magnitycx/QueryDialogFragment;

    move-result-object v0

    .line 342
    .local v0, "dlgMediaDel":Lcn/com/magnity/magnitycx/QueryDialogFragment;
    iget-object v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-virtual {v4}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "deleteMedia"

    invoke-virtual {v0, v4, v5}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    .end local v0    # "dlgMediaDel":Lcn/com/magnity/magnitycx/QueryDialogFragment;
    :sswitch_3
    iget-object v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v4}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$400(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/com/magnity/magnitycx/MagApplication;->magParameter:Lcn/com/magnity/magnitycx/sdk/MagParameter;

    iget-object v5, v5, Lcn/com/magnity/magnitycx/sdk/MagParameter;->mediaDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v4}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$600(Lcn/com/magnity/magnitycx/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-static {v6}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->access$500(Lcn/com/magnity/magnitycx/MediaSingleActivity;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "pathName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_uri
    iget-object v5, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    const-string v6, "cn.com.magnity.magnitycx.fileprovider"

    invoke-static {v5, v6, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4
    :try_end_uri
    .catch Ljava/lang/Throwable; {:try_start_uri .. :try_end_uri} :catch_uri

    goto :goto_uri

    :catch_uri
    move-exception v5

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    :goto_uri
    const-string v5, "video/*"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {v4}, Lcn/com/magnity/magnitycx/MagApplication;->setUsbDeinitAllowed(Z)V

    :try_start_play
    const-string v4, "\u64ad\u653e\u5f71\u7247"

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-virtual {v5, v4}, Lcn/com/magnity/magnitycx/MediaSingleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_play
    .catch Ljava/lang/Throwable; {:try_start_play .. :try_end_play} :catch_play

    goto/16 :goto_0

    :catch_play
    move-exception v4

    iget-object v5, p0, Lcn/com/magnity/magnitycx/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitycx/MediaSingleActivity;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x7f0e0088 -> :sswitch_0
        0x7f0e0089 -> :sswitch_1
        0x7f0e008a -> :sswitch_2
        0x7f0e00f9 -> :sswitch_3
    .end sparse-switch
.end method
