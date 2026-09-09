.class Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$5;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->onFinished(ILjava/lang/String;II)V
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
    .line 219
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$5;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$5;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$200(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->notifyDataSetChanged()V

    .line 225
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$5;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$000(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$5;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$400(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$5;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$500(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :cond_0
    return-void
.end method
