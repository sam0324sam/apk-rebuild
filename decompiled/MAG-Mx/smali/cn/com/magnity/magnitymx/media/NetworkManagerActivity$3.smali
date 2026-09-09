.class Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$3;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->onClick(Landroid/view/View;)V
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
    .line 130
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$3;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$3;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$400(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$3;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$500(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    return-void
.end method
