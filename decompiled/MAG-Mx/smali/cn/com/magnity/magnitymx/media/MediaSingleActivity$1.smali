.class Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;
.super Ljava/lang/Object;
.source "MediaSingleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->socialShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    .prologue
    .line 375
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$800(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Z)V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/MediaSingleActivity$1;->this$0:Lcn/com/magnity/magnitymx/media/MediaSingleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/MediaSingleActivity;->access$800(Lcn/com/magnity/magnitymx/media/MediaSingleActivity;Z)V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x7f080158
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
