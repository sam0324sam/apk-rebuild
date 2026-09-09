.class Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;
.super Ljava/lang/Object;
.source "FragmentTask.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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
    .line 198
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 201
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$300(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->getLocalConfig()Lcn/com/magnity/magnitymx/data/LocalConfig;

    move-result-object v1

    .line 202
    .local v1, "localConfig":Lcn/com/magnity/magnitymx/data/LocalConfig;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitymx/task/TreeItem;

    .line 203
    .local v0, "groupItem":Lcn/com/magnity/magnitymx/task/TreeItem;
    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskLastName(Ljava/lang/String;)V

    .line 204
    const/4 v2, 0x2

    new-array v2, v2, [J

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/task/TreeItem;->getId()J

    move-result-wide v4

    aput-wide v4, v2, v6

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/data/LocalConfig;->setTaskIds([J)V

    .line 205
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, p3, v3}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->setSelectedPos(II)V

    .line 206
    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 208
    invoke-static {}, Lcn/com/magnity/magnitymx/util/MsgBus;->getInstance()Lcn/com/magnity/magnitymx/util/MsgBus;

    move-result-object v2

    const-string v3, "UPDATE_TASK_REFIMAGE_OVERLAY"

    const-string v4, "PARAMETER1"

    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$2;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    .line 209
    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcn/com/magnity/magnitymx/util/FileUtils;->getCurrentTaskFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {v2, v3, v4, v5}, Lcn/com/magnity/magnitymx/util/MsgBus;->postMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return v6
.end method
