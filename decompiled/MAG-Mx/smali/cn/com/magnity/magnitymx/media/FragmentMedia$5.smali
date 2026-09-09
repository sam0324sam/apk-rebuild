.class Lcn/com/magnity/magnitymx/media/FragmentMedia$5;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/magnity/magnitymx/media/FragmentMedia;->socialShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;


# direct methods
.method constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0
    .param p1, "this$0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;

    .prologue
    .line 608
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$5;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 618
    :goto_0
    return-void

    .line 613
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$5;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$900(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)V

    goto :goto_0

    .line 616
    :pswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$5;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$900(Lcn/com/magnity/magnitymx/media/FragmentMedia;Z)V

    goto :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x7f080158
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
