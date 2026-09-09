.class Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/FragmentMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;Lcn/com/magnity/magnitymx/media/FragmentMedia$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/FragmentMedia;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/FragmentMedia$1;

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;-><init>(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 759
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 734
    :pswitch_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1000(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    goto :goto_0

    .line 737
    :pswitch_2
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1100(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    goto :goto_0

    .line 740
    :pswitch_3
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1200(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    goto :goto_0

    .line 743
    :pswitch_4
    const/4 v1, 0x1

    const v2, 0x7f0e0055

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-static {v1, v2, v3, v4}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->newInstance(II[I[I)Lcn/com/magnity/magnitymx/media/QueryDialogFragment;

    move-result-object v0

    .line 746
    .local v0, "dlg":Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    if-eqz v0, :cond_0

    .line 747
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-virtual {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteMedia"

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitymx/media/QueryDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    .end local v0    # "dlg":Lcn/com/magnity/magnitymx/media/QueryDialogFragment;
    :pswitch_5
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1300(Lcn/com/magnity/magnitymx/media/FragmentMedia;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1400(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    .line 756
    :goto_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1600(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    goto :goto_0

    .line 754
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitymx/media/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitymx/media/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitymx/media/FragmentMedia;->access$1500(Lcn/com/magnity/magnitymx/media/FragmentMedia;)V

    goto :goto_1

    .line 732
    :pswitch_data_0
    .packed-switch 0x7f080083
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 743
    :array_0
    .array-data 4
        0x7f0e0042
        0x7f0e008b
    .end array-data

    :array_1
    .array-data 4
        0x7f050028
        0x7f050062
    .end array-data
.end method
