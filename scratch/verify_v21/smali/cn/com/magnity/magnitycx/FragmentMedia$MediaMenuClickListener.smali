.class Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;
.super Ljava/lang/Object;
.source "FragmentMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/FragmentMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentMedia;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/FragmentMedia;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/FragmentMedia;Lcn/com/magnity/magnitycx/FragmentMedia$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/FragmentMedia;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/FragmentMedia$1;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 355
    :sswitch_0
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$300(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    goto :goto_0

    .line 358
    :sswitch_1
    const v1, 0x7f040036

    invoke-static {v1}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->newInstance(I)Lcn/com/magnity/magnitycx/QueryDialogFragment;

    move-result-object v0

    .line 359
    .local v0, "dlg":Lcn/com/magnity/magnitycx/QueryDialogFragment;
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-virtual {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteMedia"

    invoke-virtual {v0, v1, v2}, Lcn/com/magnity/magnitycx/QueryDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    .end local v0    # "dlg":Lcn/com/magnity/magnitycx/QueryDialogFragment;
    :sswitch_2
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$400(Lcn/com/magnity/magnitycx/FragmentMedia;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$500(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    .line 369
    :goto_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$700(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v1, p0, Lcn/com/magnity/magnitycx/FragmentMedia$MediaMenuClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentMedia;

    invoke-static {v1}, Lcn/com/magnity/magnitycx/FragmentMedia;->access$600(Lcn/com/magnity/magnitycx/FragmentMedia;)V

    goto :goto_1

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x7f0e0088 -> :sswitch_0
        0x7f0e00cf -> :sswitch_1
        0x7f0e00d0 -> :sswitch_2
    .end sparse-switch
.end method
