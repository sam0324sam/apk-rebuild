.class Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;
.super Ljava/lang/Object;
.source "FragmentSupport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/FragmentSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupportClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/FragmentSupport;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/FragmentSupport;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/FragmentSupport;Lcn/com/magnity/magnitycx/FragmentSupport$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/FragmentSupport;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/FragmentSupport$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;-><init>(Lcn/com/magnity/magnitycx/FragmentSupport;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentSupport;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSupport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/SupportActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/SupportActivity;->showHelp()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/FragmentSupport$SupportClickListener;->this$0:Lcn/com/magnity/magnitycx/FragmentSupport;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/FragmentSupport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/com/magnity/magnitycx/SupportActivity;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/SupportActivity;->showAbout()V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x7f0e00f1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
