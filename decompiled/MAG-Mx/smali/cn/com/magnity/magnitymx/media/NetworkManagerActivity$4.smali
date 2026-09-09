.class Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$4;
.super Ljava/lang/Object;
.source "NetworkManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->onProgressUpdate(ILjava/lang/String;DDI)V
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
    .line 195
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$4;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$4;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$200(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity$4;->this$0:Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;->access$600(Lcn/com/magnity/magnitymx/media/NetworkManagerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/com/magnity/magnitymx/media/NetworkManagerAdapter;->notifyItemChanged(I)V

    .line 203
    return-void
.end method
