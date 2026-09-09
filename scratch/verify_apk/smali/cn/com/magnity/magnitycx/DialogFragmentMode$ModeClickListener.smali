.class Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;
.super Ljava/lang/Object;
.source "DialogFragmentMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitycx/DialogFragmentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitycx/DialogFragmentMode;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitycx/DialogFragmentMode;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;->this$0:Lcn/com/magnity/magnitycx/DialogFragmentMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitycx/DialogFragmentMode;Lcn/com/magnity/magnitycx/DialogFragmentMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitycx/DialogFragmentMode;
    .param p2, "x1"    # Lcn/com/magnity/magnitycx/DialogFragmentMode$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;-><init>(Lcn/com/magnity/magnitycx/DialogFragmentMode;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 102
    :goto_0
    :sswitch_0
    return-void

    .line 95
    :sswitch_1
    iget-object v0, p0, Lcn/com/magnity/magnitycx/DialogFragmentMode$ModeClickListener;->this$0:Lcn/com/magnity/magnitycx/DialogFragmentMode;

    invoke-virtual {v0}, Lcn/com/magnity/magnitycx/DialogFragmentMode;->dismiss()V

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x7f0e007a -> :sswitch_1
        0x7f0e00a1 -> :sswitch_0
    .end sparse-switch
.end method
