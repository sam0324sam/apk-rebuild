.class Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;
.super Ljava/lang/Object;
.source "NetworkManagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->onBindViewHolder(Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

.field final synthetic val$item:Lcn/com/magnity/magnitymx/media/NetworkItem;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;Lcn/com/magnity/magnitymx/media/NetworkItem;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    iput-object p2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->val$item:Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->val$item:Lcn/com/magnity/magnitymx/media/NetworkItem;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 110
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->val$item:Lcn/com/magnity/magnitymx/media/NetworkItem;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmProgress(D)V

    .line 111
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->val$item:Lcn/com/magnity/magnitymx/media/NetworkItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmResultCode(I)V

    .line 112
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->val$item:Lcn/com/magnity/magnitymx/media/NetworkItem;

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;->retryItem(Lcn/com/magnity/magnitymx/media/NetworkItem;)V

    .line 113
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$1;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->notifyDataSetChanged()V

    .line 115
    :cond_0
    return-void
.end method
