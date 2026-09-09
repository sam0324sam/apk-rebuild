.class Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;


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
    .line 68
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeItem(Lcn/com/magnity/magnitymx/media/NetworkItem;)V
    .locals 5
    .param p1, "item"    # Lcn/com/magnity/magnitymx/media/NetworkItem;

    .prologue
    .line 81
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .local v2, "tempUploadItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 83
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 84
    .local v1, "networkItem":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$100(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$100(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->deleteUploadItem(Lcn/com/magnity/magnitymx/media/NetworkItem;)V

    .line 87
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$200(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->notifyItemRemoved(I)V

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "networkItem":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_1
    return-void
.end method

.method public retryItem(Lcn/com/magnity/magnitymx/media/NetworkItem;)V
    .locals 6
    .param p1, "item"    # Lcn/com/magnity/magnitymx/media/NetworkItem;

    .prologue
    const/4 v5, 0x0

    .line 71
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 72
    .local v1, "networkItem":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$100(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 74
    const/4 v3, 0x1

    new-array v0, v3, [Lcn/com/magnity/magnitymx/media/NetworkItem;

    aput-object p1, v0, v5

    .line 75
    .local v0, "itemArray":[Lcn/com/magnity/magnitymx/media/NetworkItem;
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$100(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v5}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->addUploadItems([Lcn/com/magnity/magnitymx/media/NetworkItem;II)V

    goto :goto_0

    .line 78
    .end local v0    # "itemArray":[Lcn/com/magnity/magnitymx/media/NetworkItem;
    .end local v1    # "networkItem":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_1
    return-void
.end method
