.class Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo$MagOnClickListener;
.super Ljava/lang/Object;
.source "DialogFragmentMediaInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;


# direct methods
.method private constructor <init>(Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;
    .param p2, "x1"    # Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo$MagOnClickListener;-><init>(Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo$MagOnClickListener;->this$0:Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;

    invoke-virtual {v0}, Lcn/com/magnity/magnitymx/media/DialogFragmentMediaInfo;->dismiss()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f080088
        :pswitch_0
    .end packed-switch
.end method
