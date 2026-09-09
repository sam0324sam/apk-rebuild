.class Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;
.super Ljava/lang/Object;
.source "MediaSingleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 30
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 695
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$900(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    goto :goto_0

    .line 698
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1000(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    goto :goto_0

    .line 702
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getMediaInfos()Ljava/util/ArrayList;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;->newInstance(Ljava/util/ArrayList;)Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;

    move-result-object v8

    .line 703
    .local v8, "dlgMediaInfo":Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v26

    const-string v27, "dialogFragmentMediaInfo"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    .end local v8    # "dlgMediaInfo":Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;
    :sswitch_3
    const/16 v26, 0x1

    const v27, 0x7f0e0055

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_1

    invoke-static/range {v26 .. v29}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->newInstance(II[I[I)Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    move-result-object v7

    .line 709
    .local v7, "dlgMediaDel":Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v26

    const-string v27, "deleteMedia"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    .end local v7    # "dlgMediaDel":Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 715
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v13, "intent":Landroid/content/Intent;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    .line 717
    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 718
    .local v20, "pathName":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "file:///"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    const-string v27, "video/*"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 725
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v20    # "pathName":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 726
    .local v18, "name":Ljava/lang/String;
    const-string v26, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 727
    .local v19, "parts":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0e00ee

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v26

    .line 729
    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 736
    :cond_1
    const/16 v26, 0x0

    :try_start_0
    aget-object v26, v19, v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v25

    .line 737
    .local v25, "version":I
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_2

    if-gez v25, :cond_3

    .line 738
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0e00ee

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v26

    .line 739
    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 746
    .end local v25    # "version":I
    :catch_0
    move-exception v10

    .line 747
    .local v10, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0e00ee

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v26

    .line 748
    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 742
    .end local v10    # "ex":Ljava/lang/Exception;
    .restart local v25    # "version":I
    :cond_3
    :try_start_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    aget-object v21, v19, v26

    .line 743
    .local v21, "task":Ljava/lang/String;
    const-string v26, ".jpg"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 744
    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x4

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    .line 752
    :cond_4
    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v27, v0

    .line 753
    invoke-virtual/range {v27 .. v27}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0e00f0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v21, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_2

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_3

    .line 752
    invoke-static/range {v26 .. v29}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->newInstance(ILjava/lang/String;[I[I)Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    move-result-object v9

    .line 756
    .local v9, "dlgSetRef":Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v26

    const-string v27, "dlgSetRef"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    .end local v9    # "dlgSetRef":Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "parts":[Ljava/lang/String;
    .end local v21    # "task":Ljava/lang/String;
    .end local v25    # "version":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 761
    .local v6, "directory":Ljava/io/File;
    if-eqz v6, :cond_0

    .line 764
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 765
    .local v20, "pathName":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "thermoscope://"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 766
    .local v23, "uri":Landroid/net/Uri;
    new-instance v13, Landroid/content/Intent;

    const-string v26, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 768
    .restart local v13    # "intent":Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    const/16 v27, 0x129

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 769
    :catch_1
    move-exception v10

    .line 770
    .restart local v10    # "ex":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/util/log/LogUtils;->i(Ljava/lang/Object;)V

    .line 773
    new-instance v3, Lcn/com/magnity/magnitymx/update/AnalysisDialog;

    invoke-direct {v3}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;-><init>()V

    .line 774
    .local v3, "analysisDialog":Lcn/com/magnity/magnitymx/update/AnalysisDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v26

    const-class v27, Lcn/com/magnity/magnitymx/update/AnalysisDialog;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcn/com/magnity/magnitymx/update/AnalysisDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 775
    new-instance v26, Lcn/com/magnity/magnitymx/update/AnalysisPresenter;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcn/com/magnity/magnitymx/update/AnalysisPresenter;-><init>(Lcn/com/magnity/magnitymx/update/IAnalysisContract$IAnalysisBaseView;)V

    goto/16 :goto_0

    .line 780
    .end local v3    # "analysisDialog":Lcn/com/magnity/magnitymx/update/AnalysisDialog;
    .end local v6    # "directory":Ljava/io/File;
    .end local v10    # "ex":Ljava/lang/Exception;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v20    # "pathName":Ljava/io/File;
    .end local v23    # "uri":Landroid/net/Uri;
    :sswitch_7
    invoke-static {}, Lcn/com/magnity/magnitymx/MagApp;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v14

    .line 781
    .local v14, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    invoke-virtual {v14}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getUserInfo()Lcn/com/magnity/magnitymx/data/UserInfo;

    move-result-object v24

    .line 782
    .local v24, "userInfo":Lcn/com/magnity/magnitymx/data/UserInfo;
    invoke-virtual/range {v24 .. v24}, Lcn/com/magnity/magnitymx/data/UserInfo;->isLogin()Z

    move-result v26

    if-nez v26, :cond_6

    .line 783
    new-instance v15, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-direct {v15}, Lcn/com/magnity/magnitymx/login/LoginDialog;-><init>()V

    .line 784
    .local v15, "loginDialog":Lcn/com/magnity/magnitymx/login/LoginDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    .line 785
    .local v12, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v12, :cond_5

    .line 786
    const-class v26, Lcn/com/magnity/magnitymx/login/LoginDialog;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v12, v0}, Lcn/com/magnity/magnitymx/login/LoginDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 787
    new-instance v26, Lcn/com/magnity/magnitymx/login/LoginPresenter;

    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Lcn/com/magnity/magnitymx/login/LoginPresenter;-><init>(Lcn/com/magnity/magnitymx/login/ILoginContract$ILoginView;)V

    .line 789
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0e0146

    invoke-virtual/range {v27 .. v28}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 791
    .end local v12    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v15    # "loginDialog":Lcn/com/magnity/magnitymx/login/LoginDialog;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/util/FileUtils;->getMediaStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 792
    .restart local v6    # "directory":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$100(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 793
    .restart local v18    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1200(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/util/MagSQLiteUtils;->getFileUploadStatus(Ljava/lang/String;)I

    move-result v22

    .line 794
    .local v22, "uploadStatus":I
    const/16 v26, -0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 795
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 796
    .local v17, "msg":Landroid/os/Message;
    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1300(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 798
    .end local v17    # "msg":Landroid/os/Message;
    :cond_7
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 799
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 800
    .restart local v17    # "msg":Landroid/os/Message;
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1300(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 803
    .end local v17    # "msg":Landroid/os/Message;
    :cond_8
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v11, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 804
    .local v11, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1400(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V

    .line 805
    new-instance v5, Lcn/com/magnity/magnitymx/server/MagHttpClient;

    invoke-direct {v5}, Lcn/com/magnity/magnitymx/server/MagHttpClient;-><init>()V

    .line 806
    .local v5, "client":Lcn/com/magnity/magnitymx/server/MagHttpClient;
    new-instance v4, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener$1;-><init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;)V

    .line 826
    .local v4, "callback":Lcn/com/magnity/magnitymx/server/MagHttpCallback;
    const-string v26, "/"

    move-object/from16 v0, v26

    invoke-virtual {v5, v11, v0, v4}, Lcn/com/magnity/magnitymx/server/MagHttpClient;->uploadSmallFile(Ljava/io/File;Ljava/lang/String;Lcn/com/magnity/magnitymx/server/MagHttpCallback;)Z

    .line 827
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 828
    .local v16, "message":Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MagClickListener;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$1300(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$MediaSingleHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 693
    :sswitch_data_0
    .sparse-switch
        0x7f080084 -> :sswitch_6
        0x7f080085 -> :sswitch_3
        0x7f080086 -> :sswitch_1
        0x7f080087 -> :sswitch_5
        0x7f08008a -> :sswitch_0
        0x7f08008b -> :sswitch_7
        0x7f08009a -> :sswitch_4
        0x7f0800eb -> :sswitch_2
    .end sparse-switch

    .line 706
    :array_0
    .array-data 4
        0x7f0e0042
        0x7f0e008b
    .end array-data

    :array_1
    .array-data 4
        0x7f050028
        0x7f050062
    .end array-data

    .line 753
    :array_2
    .array-data 4
        0x7f0e00a4
        0x7f0e015d
    .end array-data

    :array_3
    .array-data 4
        0x7f050028
        0x7f050028
    .end array-data
.end method
