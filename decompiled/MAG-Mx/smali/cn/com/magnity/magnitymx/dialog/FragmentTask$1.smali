.class Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;
.super Landroid/content/BroadcastReceiver;
.source "FragmentTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/dialog/FragmentTask;
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
    .line 44
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 53
    :pswitch_0
    const/4 v2, 0x0

    .line 54
    .local v2, "isDataChanged":Z
    const-string v5, "PARAMETER1"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 55
    .local v1, "capturedIds":[J
    if-eqz v1, :cond_3

    .line 56
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v5, v1}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$000(Lcn/com/magnity/magnitymx/dialog/FragmentTask;[J)[I

    move-result-object v3

    .line 57
    .local v3, "pos":[I
    if-eqz v3, :cond_3

    array-length v5, v3

    if-le v5, v9, :cond_3

    .line 58
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v5

    aget v7, v3, v6

    aget v8, v3, v9

    invoke-virtual {v5, v7, v8}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->setPosCaptured(II)V

    .line 59
    const/4 v2, 0x1

    .line 62
    .end local v3    # "pos":[I
    :cond_3
    const-string v5, "PARAMETER2"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    .line 63
    .local v4, "selectedIds":[J
    if-eqz v4, :cond_4

    .line 64
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v5, v4}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$000(Lcn/com/magnity/magnitymx/dialog/FragmentTask;[J)[I

    move-result-object v3

    .line 65
    .restart local v3    # "pos":[I
    if-eqz v3, :cond_4

    array-length v5, v3

    if-le v5, v9, :cond_4

    .line 66
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v5

    aget v7, v3, v6

    aget v8, v3, v9

    invoke-virtual {v5, v7, v8}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->setSelectedPos(II)V

    .line 67
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$200(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Landroid/widget/ExpandableListView;

    move-result-object v5

    iget-object v7, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v7}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v7

    aget v6, v3, v6

    aget v8, v3, v9

    invoke-virtual {v7, v6, v8}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->getChildrenPosition(II)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->setSelection(I)V

    .line 68
    const/4 v2, 0x1

    .line 71
    .end local v3    # "pos":[I
    :cond_4
    if-eqz v2, :cond_0

    .line 72
    iget-object v5, p0, Lcn/com/magnity/magnitymx/dialog/FragmentTask$1;->this$0:Lcn/com/magnity/magnitymx/dialog/FragmentTask;

    invoke-static {v5}, Lcn/com/magnity/magnitymx/dialog/FragmentTask;->access$100(Lcn/com/magnity/magnitymx/dialog/FragmentTask;)Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcn/com/magnity/magnitymx/adapter/TaskExpandableListViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 51
    .end local v1    # "capturedIds":[J
    .end local v2    # "isDataChanged":Z
    .end local v4    # "selectedIds":[J
    :pswitch_1
    const-string v7, "ACTION_UPDATE_TASK_TREE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1000050b
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
