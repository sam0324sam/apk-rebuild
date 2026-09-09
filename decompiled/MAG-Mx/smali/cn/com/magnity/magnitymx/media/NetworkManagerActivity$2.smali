.class Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 97
    move-object v0, p2

    check-cast v0, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;

    .line 98
    .local v0, "mMagnityNetworkServiceBinder":Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService$MagnityNetworkServiceBinder;->getService()Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$102(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .line 99
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$100(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-virtual {v1, v2}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->addListener(Lcn/com/magnity/magnitymx/media/NetworkServiceListener;)V

    .line 100
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$100(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->getUploadItems()[Lcn/com/magnity/magnitymx/media/NetworkItem;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$002(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 101
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    new-instance v2, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v4}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$300(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;-><init>(Ljava/util/ArrayList;Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;)V

    invoke-static {v1, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$202(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    .line 102
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$400(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$200(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$400(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-virtual {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 104
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$400(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$500(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 115
    return-void
.end method
