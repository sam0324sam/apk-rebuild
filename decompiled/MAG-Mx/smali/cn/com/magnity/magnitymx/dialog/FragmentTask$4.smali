.class Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;
.super Ljava/lang/Object;
.source "FragmentTask.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/FragmentTask;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .prologue
    .line 233
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 14
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 236
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v10

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 238
    .local v2, "childItem":Lcn/com/magnity/magnitymx/task/TreeItem;
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v10

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 239
    .local v9, "ti":Lcn/com/magnity/magnitymx/task/TreeItem;
    if-nez v9, :cond_0

    .line 240
    const/4 v10, 0x0

    .line 264
    :goto_0
    return v10

    .line 243
    :cond_0
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$300(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v10

    invoke-interface {v10}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v6

    .line 244
    .local v6, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcn/com/magnity/magnitymx/util/FileUtils;->getTasksStoragePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v6}, Lcn/com/magnity/magnitymx/data/LocalConfig;->getTaskFileName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v4, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 246
    .local v7, "names":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v5, v10, [J

    .line 248
    .local v5, "ids":[J
    :try_start_0
    new-instance v8, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;

    invoke-direct {v8}, Lcn/com/magnity/magnitymx/task/SqliteTaskParser;-><init>()V

    .line 249
    .local v8, "parser":Lcn/com/magnity/magnitymx/task/ITaskParser;
    invoke-virtual {v9}, Lcn/com/magnity/magnitymx/task/TreeItem;->getId()J

    move-result-wide v10

    invoke-interface {v8, v4, v10, v11, v5}, Lcn/com/magnity/magnitymx/task/ITaskParser;->parseTask(Ljava/io/File;J[J)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 254
    if-eqz v2, :cond_1

    .line 255
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v6, v10}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskLastName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v6, v5}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskIds([J)V

    .line 257
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v10

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->setSelectedPos(II)V

    .line 258
    iget-object v10, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v10}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 260
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v10

    const-string v11, "UPDATE_TASK_REFIMAGE_OVERLAY"

    const-string v12, "PARAMETER1"

    iget-object v13, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$4;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .line 261
    invoke-virtual {v13}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcn/com/magnity/magnitymx/util/FileUtils;->getCurrentTaskFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 260
    invoke-virtual {v10, v11, v12, v13}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 250
    .end local v8    # "parser":Lcn/com/magnity/magnitymx/task/ITaskParser;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_0
.end method
