.class public Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NetworkManagerActivity.java"

# interfaces
.implements Lcn/com/magnity/magnitymx/media/NetworkServiceListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkManagerActivity"


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private isPaused:Z

.field private mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

.field private mManagerAdapterCallback:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

.field private mNetworkManagerAdapter:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mUploadHint:Landroid/widget/TextView;

.field private mUploadItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/magnity/magnitymx/media/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mUploadRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private pauseButton:Landroid/widget/Button;

.field private updatePosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->isPaused:Z

    .line 42
    iput v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->updatePosition:I

    return-void
.end method

.method static synthetic access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    return-object v0
.end method

.method static synthetic access$102(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;Lcn/com/magnity/magnitymx/service/MagnityNetworkService;)Lcn/com/magnity/magnitymx/service/MagnityNetworkService;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    return-object p1
.end method

.method static synthetic access$200(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mNetworkManagerAdapter:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;
    .locals 0
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;
    .param p1, "x1"    # Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mNetworkManagerAdapter:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mManagerAdapterCallback:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadHint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    .prologue
    .line 28
    iget v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->updatePosition:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 126
    :sswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->cancelAll()V

    .line 128
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mNetworkManagerAdapter:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->notifyItemRangeRemoved(II)V

    .line 130
    new-instance v0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$3;

    invoke-direct {v0, p0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$3;-><init>(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)V

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 140
    :sswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iget-boolean v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->isPaused:Z

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->pauseAll()V

    .line 145
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mNetworkManagerAdapter:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 147
    :cond_1
    iput-boolean v4, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->isPaused:Z

    .line 148
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->pauseButton:Landroid/widget/Button;

    const-string v1, "\u7ee7\u7eed\u5168\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;->continueAll()V

    .line 156
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mNetworkManagerAdapter:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 158
    :cond_3
    iput-boolean v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->isPaused:Z

    .line 159
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->pauseButton:Landroid/widget/Button;

    const-string v1, "\u6682\u505c\u5168\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080035 -> :sswitch_0
        0x7f080114 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f0a001f

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->setContentView(I)V

    .line 49
    const v2, 0x7f0801aa

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadHint:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f0801ab

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 51
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 52
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 56
    const v2, 0x7f080035

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->cancelButton:Landroid/widget/Button;

    .line 57
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v2, 0x7f080114

    invoke-virtual {p0, v2}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->pauseButton:Landroid/widget/Button;

    .line 59
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->pauseButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 64
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    const v2, 0x7f0e012f

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 68
    :cond_0
    new-instance v2, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$1;-><init>(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mManagerAdapterCallback:Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter$NetworkManagerAdapterCallback;

    .line 94
    new-instance v2, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;

    invoke-direct {v2, p0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$2;-><init>(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)V

    iput-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, "bindIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v4}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 120
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 171
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 172
    return-void
.end method

.method public onFinished(ILjava/lang/String;II)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "resultCode"    # I
    .param p4, "remainedNum"    # I

    .prologue
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    .local v2, "tempUploadItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 212
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 213
    .local v1, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    iput v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->updatePosition:I

    .line 215
    invoke-virtual {v1, p3}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmResultCode(I)V

    .line 216
    const v3, 0x30e6e

    if-ne p3, v3, :cond_1

    .line 217
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    .line 218
    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    new-instance v3, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$5;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$5;-><init>(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)V

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    .end local v1    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_0
    :goto_1
    return-void

    .line 232
    .restart local v1    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmStatus(I)V

    goto :goto_1

    .line 211
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onItemsAdded(IIIII)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "newNum"    # I
    .param p3, "oldNum"    # I
    .param p4, "sucNum"    # I
    .param p5, "failNum"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mMagnityNetworkService:Lcn/com/magnity/magnitymx/service/MagnityNetworkService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sucNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 178
    :pswitch_0
    invoke-virtual {p0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->onBackPressed()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressUpdate(ILjava/lang/String;DDI)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "progress"    # D
    .param p5, "totalProgress"    # D
    .param p7, "remainedNum"    # I

    .prologue
    .line 187
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->mUploadItemList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v2, "tempUploadItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/com/magnity/magnitymx/media/NetworkItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 189
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/magnity/magnitymx/media/NetworkItem;

    .line 190
    .local v1, "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/NetworkItem;->getmAction()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 191
    invoke-virtual {v1, p3, p4}, Lcn/com/magnity/magnitymx/media/NetworkItem;->setmProgress(D)V

    .line 192
    iput v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->updatePosition:I

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "item":Lcn/com/magnity/magnitymx/media/NetworkItem;
    :cond_1
    new-instance v3, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$4;

    invoke-direct {v3, p0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$4;-><init>(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)V

    invoke-virtual {p0, v3}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method
