.class Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;
.super Ljava/lang/Object;
.source "DialogFragmentTaskManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .prologue
    .line 505
    iput-object p1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 508
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v9

    check-cast v9, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 509
    .local v9, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v11, v9, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 510
    .local v11, "position":I
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 511
    .local v8, "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    instance-of v0, v8, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    if-nez v0, :cond_0

    .line 512
    const/4 v0, 0x0

    .line 543
    .end local v8    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :goto_0
    return v0

    .line 514
    .restart local v8    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 515
    check-cast v8, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v8    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)I

    move-result v0

    const-string v1, "task_reset"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .line 516
    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 515
    invoke-interface {v8, v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 517
    const/4 v0, 0x1

    goto :goto_0

    .line 518
    .restart local v8    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 519
    check-cast v8, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;

    .end local v8    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)I

    move-result v0

    const-string v1, "task_delete"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    .line 520
    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v11

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 519
    invoke-interface {v8, v0, v1, v2}, Lcn/com/magnity/magnitymx/dialog/ISettingsFeedback;->onDataChanged(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 522
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 523
    .local v6, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$202(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;[Ljava/io/File;)[Ljava/io/File;

    .line 525
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1102(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Ljava/util/List;)Ljava/util/List;

    .line 527
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$200(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v7, v1, v0

    .line 528
    .local v7, "file":Ljava/io/File;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 529
    .local v10, "item1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1200()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    invoke-static {}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1200()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const v4, 0x7f070061

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :goto_2
    iget-object v3, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    :cond_2
    invoke-static {}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1200()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const v4, 0x7f0700ac

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 537
    .end local v7    # "file":Ljava/io/File;
    .end local v10    # "item1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v12, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1100(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f0a004b

    .line 538
    invoke-static {}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$1200()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 537
    invoke-static {v12, v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$302(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 540
    iget-object v0, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$500(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager$13;->this$0:Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;->access$300(Lcn/com/magnity/magnitymx/dialog/DialogFragmentTaskManager;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 541
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 543
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v8    # "fragmentActivity":Landroid/support/v4/app/FragmentActivity;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 538
    :array_0
    .array-data 4
        0x7f0800d6
        0x7f0800d5
    .end array-data
.end method
