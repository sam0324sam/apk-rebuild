.class Lcn/com/magnity/magnitymx/live/LiveFragment$1;
.super Ljava/lang/Object;
.source "LiveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/live/LiveFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/live/LiveFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/live/LiveFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$1;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$1;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->access$000(Lcn/com/magnity/magnitymx/live/LiveFragment;)Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/com/magnity/magnitymx/live/ILiveContract$IPresenter;->setCaptureMode(I)V

    .line 84
    iget-object v0, p0, Lcn/com/magnity/magnitymx/live/LiveFragment$1;->this$0:Lcn/com/magnity/magnitymx/live/LiveFragment;

    invoke-static {v0}, Lcn/com/magnity/magnitymx/live/LiveFragment;->access$100(Lcn/com/magnity/magnitymx/live/LiveFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 85
    return-void
.end method
